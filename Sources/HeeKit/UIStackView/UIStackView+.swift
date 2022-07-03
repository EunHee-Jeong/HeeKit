import UIKit.UIStackView

extension UIStackView {
    public func addArrangedSubviews(_ views: UIView...) {
        for view in views {
            self.addArrangedSubview(view)
        }
    }
}
