import UIKit.UIButton

extension UIButton {
    public func setUnderline(at targetButton: UIButton, state: UIControl.State) {
        let title = targetButton.title(for: state)
        let attributedString = NSMutableAttributedString(string: title ?? "")
        attributedString.addAttribute(
            .underlineStyle,
            value: NSUnderlineStyle.single.rawValue,
            range: NSRange(location: 0, length: title?.count ?? 0)
        )
        targetButton.setAttributedTitle(attributedString, for: state)
    }
    
}
