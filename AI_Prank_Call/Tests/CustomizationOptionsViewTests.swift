
import XCTest
@testable import AI_Prank_Call

class CustomizationOptionsViewTests: XCTestCase {

    var sut: CustomizationOptionsView!

    override func setUp() {
        super.setUp()
        sut = CustomizationOptionsView()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testCustomizationOptionsView_WhenCreated_HasRequiredSubviews() {
        XCTAssertTrue(sut.subviews.contains(sut.customizationOptionsTableView), "View does not have a table view subview")
    }

    func testCustomizationOptionsView_WhenOptionSelected_CallsDelegateMethod() {
        let mockDelegate = MockCustomizationOptionsViewDelegate()
        sut.delegate = mockDelegate

        sut.customizationOptionsTableView.delegate?.tableView?(sut.customizationOptionsTableView, didSelectRowAt: IndexPath(row: 0, section: 0))

        XCTAssertTrue(mockDelegate.didCallDidSelectOption, "Delegate method was not called")
    }
}

class MockCustomizationOptionsViewDelegate: CustomizationOptionsViewDelegate {
    var didCallDidSelectOption = false

    func customizationOptionsView(_ view: CustomizationOptionsView, didSelectOption option: CustomizationOption) {
        didCallDidSelectOption = true
    }
}
