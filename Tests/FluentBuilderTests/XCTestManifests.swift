import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        return [
            testCase(BuilderTests.allTests),
            testCase(InitiableTests.allTests),
        ]
    }
#endif
