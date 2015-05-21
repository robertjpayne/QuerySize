import UIKit

public enum QuerySizeAttribute {
    case ByIdiom(UIUserInterfaceIdiom)
    case ByScreenMinWidth(CGFloat)
    case ByScreenMaxWidth(CGFloat)
    case ByScreenMinHeight(CGFloat)
    case ByScreenMaxHeight(CGFloat)
    
    var isValid: Bool {
        switch self {
        case .ByIdiom(let idiom):
            return (idiom == UIDevice.currentDevice().userInterfaceIdiom)
        case .ByScreenMinWidth(let value):
            return (UIScreen.mainScreen().bounds.size.width >= value)
        case .ByScreenMaxWidth(let value):
            return (UIScreen.mainScreen().bounds.size.width <= value)
        case .ByScreenMinHeight(let value):
            return (UIScreen.mainScreen().bounds.size.height >= value)
        case .ByScreenMaxHeight(let value):
            return (UIScreen.mainScreen().bounds.size.height <= value)
        }
    }
}

public func QuerySize(a1: QuerySizeAttribute, @noescape closure: () -> Void) {
    if a1.isValid {
        closure()
    }
}

public func QuerySize(a1: QuerySizeAttribute, a2: QuerySizeAttribute, @noescape closure: () -> Void) {
    if a1.isValid &&
       a2.isValid {
        closure()
    }
}

public func QuerySize(a1: QuerySizeAttribute, a2: QuerySizeAttribute, a3: QuerySizeAttribute, @noescape closure: () -> Void) {
    if a1.isValid &&
       a2.isValid &&
       a3.isValid {
        closure()
    }
}

public func QuerySize(a1: QuerySizeAttribute, a2: QuerySizeAttribute, a3: QuerySizeAttribute, a4: QuerySizeAttribute, @noescape closure: () -> Void) {
    if a1.isValid &&
       a2.isValid &&
       a3.isValid &&
       a4.isValid {
        closure()
    }
}

public func QuerySize(a1: QuerySizeAttribute, a2: QuerySizeAttribute, a3: QuerySizeAttribute, a4: QuerySizeAttribute, a5: QuerySizeAttribute, @noescape closure: () -> Void) {
    if a1.isValid &&
       a2.isValid &&
       a3.isValid &&
       a4.isValid &&
       a5.isValid {
        closure()
    }
}