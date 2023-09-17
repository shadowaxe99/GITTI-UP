
import XCTest
@testable import AI_Prank_Call

class SpeechRecognitionViewTests: XCTestCase {

    var sut: SpeechRecognitionView!

    override func setUp() {
        super.setUp()
        sut = SpeechRecognitionView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testSpeechRecognitionView_WhenCreated_HasRequiredSubviews() {
        XCTAssertTrue(sut.subviews.contains(sut.speechRecognitionLabel))
        XCTAssertTrue(sut.subviews.contains(sut.speechRecognitionButton))
    }

    func testSpeechRecognitionButton_WhenTapped_CallsSpeechRecognitionService() {
        let mockSpeechRecognitionService = MockSpeechRecognitionService()
        sut.speechRecognitionService = mockSpeechRecognitionService

        sut.speechRecognitionButton.sendActions(for: .touchUpInside)

        XCTAssertTrue(mockSpeechRecognitionService.isStartSpeechRecognitionCalled)
    }
}

class MockSpeechRecognitionService: SpeechRecognitionService {
    var isStartSpeechRecognitionCalled = false

    override func startSpeechRecognition() {
        isStartSpeechRecognitionCalled = true
    }
}

This is a basic unit test for the SpeechRecognitionView in Swift using XCTest. It tests that the view is properly initialized with its required subviews and that the speech recognition service is called when the button is tapped.