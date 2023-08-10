
import Foundation
import Localize_Swift

extension String {
    public func innerLocalized() -> String {
        let bundle = ViewControllerFactory.getBundle()
        let str = localized(using: nil, in: bundle)
        return str
    }
}
