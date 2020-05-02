import Swift
import Features

public protocol Initiable {
    init()
}

extension Initiable {
    public static var builder: Builder<Self> {
        Builder<Self>(subject: self.init())
    }

    public var builder: Builder<Self> {
        Builder<Self>(subject: self)
    }
}
