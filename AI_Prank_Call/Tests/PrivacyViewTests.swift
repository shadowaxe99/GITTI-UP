
import XCTest
@testable import AI_Prank_Call

class PrivacyViewTests: XCTestCase {

    var sut: PrivacyView!

    override func setUp() {
        super.setUp()
        sut = PrivacyView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testPrivacyView_WhenCreated_HasRequiredSubviews() {
        XCTAssertTrue(sut.body is some View, "PrivacyView does not have a body view")
    }

    func testPrivacyView_WhenCreated_HasCorrectTitle() {
        XCTAssertEqual(sut.title, "Privacy", "PrivacyView title is not set correctly")
    }

    func testPrivacyView_WhenCreated_HasCorrectDescription() {
        XCTAssertEqual(sut.description, "Your privacy is our top priority. We do not share your personal data with any third parties.", "PrivacyView description is not set correctly")
    }
}
