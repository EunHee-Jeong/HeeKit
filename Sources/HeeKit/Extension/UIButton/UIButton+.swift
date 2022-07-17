import UIKit.UIButton

public func setUnderline(at targetString: UIButton, state: UIControl.State) -> UIButton {
    let title = targetString.title(for: state)
    let attributedString = NSMutableAttributedString(string: title ?? "")
    attributedString.addAttribute(
        .underlineStyle,
        value: NSUnderlineStyle.single.rawValue,
        range: NSRange(location: 0, length: title?.count ?? 0)
    )
    return targetString.setAttributedTitle(attributedString, for: state)
}
