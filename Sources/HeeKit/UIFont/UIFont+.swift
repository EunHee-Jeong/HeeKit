import UIKit.UIFont

extension UIFont {
    public static func font(_ type: TaskPriority, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: type.rawValue, size: size)!
    }
}
