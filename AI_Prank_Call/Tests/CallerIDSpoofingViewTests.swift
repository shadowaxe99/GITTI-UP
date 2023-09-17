
import XCTest
@testable import AI_Prank_Call

class CallerIDSpoofingViewTests: XCTestCase {

    var callerIDSpoofingView: CallerIDSpoofingView!

    override func setUp() {
        super.setUp()
        callerIDSpoofingView = CallerIDSpoofingView()
    }

    override func tearDown() {
        callerIDSpoofingView = nil
        super.tearDown()
    }

    func testSpoofingFunctionality() {
        let spoofedID = callerIDSpoofingView.spoofCallerID("1234567890")
        XCTAssertNotEqual(spoofedID, "1234567890", "Caller ID spoofing failed")
    }
}
