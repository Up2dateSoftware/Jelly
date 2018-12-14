import UIKit

extension UIView {
    public func roundCorners(corners: CACornerMask = [.layerMaxXMaxYCorner,.layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner], radius: CGFloat = 0.0) {
        layer.masksToBounds = true
        layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            layer.maskedCorners = corners
        } else {
            // Fallback on earlier versions
        }
    }
}
