
import XCTest
@testable import AI_Prank_Call

class ChatGPTIntegrationViewTests: XCTestCase {

    var sut: ChatGPTIntegrationView!

    override func setUp() {
        super.setUp()
        sut = ChatGPTIntegrationView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testChatGPTIntegrationView_WhenCreated_HasRequiredSubviews() {
        XCTAssertTrue(sut.subviews.contains(sut.chatInputField), "chatInputField is not a subview")
        XCTAssertTrue(sut.subviews.contains(sut.chatOutputField), "chatOutputField is not a subview")
        XCTAssertTrue(sut.subviews.contains(sut.sendButton), "sendButton is not a subview")
    }

    func testChatGPTIntegrationView_CanSendChatMessage() {
        sut.chatInputField.text = "Hello, OpenAI!"
        sut.sendButton.sendActions(for: .touchUpInside)
        XCTAssertNotNil(sut.chatOutputField.text, "chatOutputField is not updated")
    }
}
