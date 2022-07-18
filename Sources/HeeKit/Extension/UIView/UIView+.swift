import UIKit.UIView

extension UIView {
    public func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
    
    public func dropShadow(rounded: CGFloat) {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = rounded
        self.layer.shadowOpacity = 0.1
        self.layer.masksToBounds = false
    }
    
    public func makeRounded(radius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    public func makeRoundedWithBorder(radius: CGFloat, borderColor: CGColor, borderWith: CGFloat = 1) {
        makeRounded(radius: radius)
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWith
    }
    
    public func makeRoundedSpecificCorner(corners: UIRectCorner, cornerRadius: Double) {
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    
    @IBInspectable public var borderColor: UIColor? {
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.layer.cornerRadius     }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable public var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
}
