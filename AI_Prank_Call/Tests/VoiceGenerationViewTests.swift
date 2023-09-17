
import XCTest
@testable import AI_Prank_Call

class VoiceGenerationViewTests: XCTestCase {

    var voiceGenerationView: VoiceGenerationView!

    override func setUp() {
        super.setUp()
        voiceGenerationView = VoiceGenerationView()
    }

    override func tearDown() {
        voiceGenerationView = nil
        super.tearDown()
    }

    func testVoiceGeneration() {
        let expectedVoice = "AI Voice"
        let generatedVoice = voiceGenerationView.generateVoice(from: "Hello, this is a prank call")
        XCTAssertEqual(expectedVoice, generatedVoice)
    }
}
