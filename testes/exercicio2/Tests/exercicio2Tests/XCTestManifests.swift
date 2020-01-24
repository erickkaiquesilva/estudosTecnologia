import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(exercicio2Tests.allTests),
    ]
}
#endif
