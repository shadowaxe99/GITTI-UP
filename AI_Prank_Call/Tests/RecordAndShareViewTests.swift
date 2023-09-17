
import XCTest
@testable import AI_Prank_Call

class RecordAndShareViewTests: XCTestCase {

    var sut: RecordAndShareView!

    override func setUp() {
        super.setUp()
        sut = RecordAndShareView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testRecordButtonAction() {
        sut.recordButtonAction()
        XCTAssertTrue(sut.isRecording)
    }

    func testStopRecordingButtonAction() {
        sut.stopRecordingButtonAction()
        XCTAssertFalse(sut.isRecording)
    }

    func testShareButtonAction() {
        let expectation = self.expectation(description: "Share action completed")
        sut.shareButtonAction { result in
            XCTAssertTrue(result)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
