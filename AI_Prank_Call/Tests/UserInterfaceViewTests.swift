
import XCTest
@testable import AI_Prank_Call

class UserInterfaceViewTests: XCTestCase {

    var sut: UserInterfaceView!

    override func setUp() {
        super.setUp()
        sut = UserInterfaceView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testUserInterfaceView_WhenCreated_HasRequiredSubviews() {
        XCTAssertTrue(sut.subviews.contains(sut.prankCallLibraryView), "The subview prankCallLibraryView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.voiceGenerationView), "The subview voiceGenerationView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.speechRecognitionView), "The subview speechRecognitionView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.callerIDSpoofingView), "The subview callerIDSpoofingView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.customizationOptionsView), "The subview customizationOptionsView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.recordAndShareView), "The subview recordAndShareView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.chatGPTIntegrationView), "The subview chatGPTIntegrationView was not found")
        XCTAssertTrue(sut.subviews.contains(sut.privacyView), "The subview privacyView was not found")
    }
}
