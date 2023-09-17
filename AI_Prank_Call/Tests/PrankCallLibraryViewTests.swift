
import XCTest
@testable import AI_Prank_Call

class PrankCallLibraryViewTests: XCTestCase {

    var prankCallLibraryView: PrankCallLibraryView!

    override func setUp() {
        super.setUp()
        prankCallLibraryView = PrankCallLibraryView()
    }

    override func tearDown() {
        prankCallLibraryView = nil
        super.tearDown()
    }

    func testPrankCallLibraryView() {
        let expectedTitle = "Prank Call Library"
        XCTAssertEqual(prankCallLibraryView.title, expectedTitle)
    }

    func testPrankCallLibraryViewHasPrankCalls() {
        XCTAssertNotNil(prankCallLibraryView.prankCalls)
    }

    func testPrankCallLibraryViewCanSelectPrankCall() {
        let prankCall = PrankCall(title: "Test Prank Call", description: "This is a test prank call.")
        prankCallLibraryView.selectPrankCall(prankCall)
        XCTAssertEqual(prankCallLibraryView.selectedPrankCall, prankCall)
    }
}
