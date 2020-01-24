import XCTest

import logicaTests

var tests = [XCTestCaseEntry]()
tests += logicaTests.allTests()
XCTMain(tests)
