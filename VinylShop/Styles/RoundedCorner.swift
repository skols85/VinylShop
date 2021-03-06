import UIKit

struct RoundedCorner: OptionSet {
    let rawValue: UInt

    static let topLeft: RoundedCorner = RoundedCorner(rawValue: CACornerMask.layerMinXMinYCorner.rawValue)
    static let topRight: RoundedCorner = RoundedCorner(rawValue: CACornerMask.layerMaxXMinYCorner.rawValue)
    static let bottomLeft: RoundedCorner = RoundedCorner(rawValue: CACornerMask.layerMinXMaxYCorner.rawValue)
    static let bottomRight: RoundedCorner = RoundedCorner(rawValue: CACornerMask.layerMaxXMaxYCorner.rawValue)

    static let top: RoundedCorner = [.topLeft, .topRight]
    static let bottom: RoundedCorner = [.bottomLeft, .bottomRight]
    static let all: RoundedCorner = [.top, .bottom]
}

extension RoundedCorner {

    var cornerMask: CACornerMask {
        return CACornerMask(rawValue: rawValue)
    }

}
