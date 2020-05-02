import Features
import FluentBuilder
import XCTest

final class InitiableTests: XCTestCase {
    final class SomeClass<T: Initiable>: Initiable {
        var value: T = T()
        required init() {}
    }

    final class SomeStruct: Initiable {
        var someInt: Int = 0
        var someString: String = ""
        required init() {}
    }

    func testInitiableClassStaticBuilder() {
        let object = SomeClass<Int>
            .builder
            .value(-10)
            .build()
        XCTAssertEqual(object.value, -10)
    }

    func testInitiableClassInstanceBuilder() {
        let object = SomeClass<String>()
            .builder
            .value("hello world!")
            .build()
        XCTAssertEqual(object.value, "hello world!")
    }

    func testInitiableStructStaticBuilder() {
        let object = SomeStruct
            .builder
            .someString("hello world!")
            .build()
        XCTAssertEqual(object.someString, "hello world!")
    }

    func testInitiableStructInstanceBuilder() {
        let object = SomeStruct()
            .builder
            .someInt(-10)
            .build()
        XCTAssertEqual(object.someInt, -10)
    }

    func testStaticBuilderForClass() {
        let object: SomeClass = Builder
            .value("hello world!")
            .build()
        XCTAssertEqual(object.value, "hello world!")
    }

    func testStaticBuilderForStruct() {
        let object: SomeStruct = Builder
            .someInt(-10)
            .build()
        XCTAssertEqual(object.someInt, -10)
    }

    func testStaticBuilderWithoutTypeInferenceForClass() {
        let object = Builder<SomeClass>
            .value("hello!")
            .build()
        XCTAssertEqual(object.value, "hello!")
    }

    func testStaticBuilderWithoutTypeInferenceForStruct() {
        let object = Builder<SomeStruct>
            .someInt(-1)
            .build()
        XCTAssertEqual(object.someInt, -1)
    }

    func testInstanceBuilderForClass() {
        let object: SomeClass = Builder()
            .value("hello world!")
            .build()
        XCTAssertEqual(object.value, "hello world!")
    }

    func testInstanceBuilderForStruct() {
        let object: SomeStruct = Builder()
            .someString("hello world!")
            .build()
        XCTAssertEqual(object.someString, "hello world!")
    }

    func testInitializeBuilderForClassType() {
        let object = Builder(SomeClass.self)
            .value("hello world!")
            .build()
        XCTAssertEqual(object.value, "hello world!")
    }

    func testInitializeBuilderForStructType() {
        let object = Builder(SomeStruct.self)
            .someString("hello world!")
            .build()
        XCTAssertEqual(object.someString, "hello world!")
    }

    static var allTests = [
        ("testInitiableClassStaticBuilder", testInitiableClassStaticBuilder),
        ("testInitiableClassInstanceBuilder", testInitiableClassInstanceBuilder),
        ("testInitiableStructStaticBuilder", testInitiableStructStaticBuilder),
        ("testInitiableStructInstanceBuilder", testInitiableStructInstanceBuilder),
        ("testStaticBuilderForClass", testStaticBuilderForClass),
        ("testStaticBuilderForStruct", testStaticBuilderForStruct),
        ("testStaticBuilderWithoutTypeInferenceForClass", testStaticBuilderWithoutTypeInferenceForClass),
        ("testStaticBuilderWithoutTypeInferenceForStruct", testStaticBuilderWithoutTypeInferenceForStruct),
        ("testInstanceBuilderForClass", testInstanceBuilderForClass),
        ("testInstanceBuilderForStruct", testInstanceBuilderForStruct),
        ("testInitializeBuilderForClassType", testInitializeBuilderForClassType),
        ("testInitializeBuilderForStructType", testInitializeBuilderForStructType),
    ]
}
