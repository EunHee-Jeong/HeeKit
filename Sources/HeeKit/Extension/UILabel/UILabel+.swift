import UIKit.UILabel

extension UILabel {
    public func addLabelSpacing(kernValue: Double = -0.6, lineSpacing: CGFloat = 4.0) {
        if let labelText = text, labelText.count > 0 {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineSpacing
            attributedText = NSAttributedString(
                string: labelText,
                attributes: [.kern: kernValue,
                            .paragraphStyle: paragraphStyle]
            )
        }
    }
    
    public func applyColor(to targetString: String, with color: UIColor) {
        if let labelText = text, labelText.count > 0 {
            let attributedStr = NSMutableAttributedString(string: labelText)
            attributedStr.addAttribute(
                .foregroundColor,
                value: color,
                range: (labelText as NSString).range(of: targetString)
            )
            attributedText = attributedStr
        }
    }
    
    public func setLineSpacing(lineSpacing: CGFloat) {
        if let text = self.text {
            let attributedString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()
            style.lineSpacing = lineSpacing
            attributedString.addAttribute(
                NSAttributedString.Key.paragraphStyle,
                value: style,
                range: NSMakeRange(0, attributedString.length)
            )
            self.attributedText = attributedString
        }
    }
    
    public func setCharacterSpacing(_ spacing: CGFloat) {
        let attributedString = NSMutableAttributedString(string: self.text ?? "")
        attributedString.addAttribute(
            NSAttributedString.Key.kern,
            value: spacing,
            range: NSMakeRange(0, attributedString.length)
        )
        self.attributedText = attributedString
    }
    
    public func setLineAndCharacterSpacing(lineSpacing: CGFloat, characterSpacing: CGFloat) {
        if let text = self.text {
            let attributedString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()
            style.lineSpacing = lineSpacing
            attributedString.addAttribute(
                NSAttributedString.Key.paragraphStyle,
                value: style,
                range: NSMakeRange(0, attributedString.length)
            )
            attributedString.addAttribute(
                NSAttributedString.Key.kern,
                value: characterSpacing,
                range: NSMakeRange(0, attributedString.length)
            )
            self.attributedText = attributedString
        }
    }
}

