import Foundation
import XCTest
import XCTest_Gherkin
import Nimble

class NavigationSteps: StepDefiner {
    override func defineSteps() {

        step("the start button is displayed") {
            XCTAssert(Buttons.start.exists == true)
        }

        step("I select the start button") {
            Buttons.start.tap()
        }

        step("I select the stop button") {
            app.buttons["Stop"].tap()
        }

        step("the stop button is displayed") {
            XCTAssert(app.buttons["Stop"].exists == true)
        }

        step("the start button is not displayed") {
            XCTAssert(Buttons.start.exists == false)
        }

        step("the stop button is not displayed") {
            XCTAssert(app.buttons["Stop"].exists == false)
        }
    }
}
