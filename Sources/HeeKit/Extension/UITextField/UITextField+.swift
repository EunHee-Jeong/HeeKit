import UIKit.UITextField

extension UITextField {
    public func addLeftPadding(width : CGFloat = 10) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    
    public func setCharacterSpacing(_ spacing: CGFloat){
        let attributedString = NSMutableAttributedString(string: self.text ?? "")
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, attributedString.length))
        self.attributedText = attributedString
    }
}
