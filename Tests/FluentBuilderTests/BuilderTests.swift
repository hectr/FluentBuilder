import FluentBuilder
import XCTest

final class BuilderTests: XCTestCase {
    struct Foo {
        var foo: Bool
    }

    func test() {
        let object = Builder(subject: Foo(foo: true))
            .foo(false)
            .build()
        XCTAssertEqual(object.foo, false)
    }

    static var allTests = [
        ("test", test),
    ]
}
