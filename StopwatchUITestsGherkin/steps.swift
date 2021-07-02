import Foundation
import XCTest
import XCTest_Gherkin

class NavigationSteps: StepDefiner {
    override func defineSteps() {

        step("the start button is displayed") {
            XCTAssert(app.buttons["Start"].exists == true)
        }

        step("I select the start button") {
            app.buttons["Start"].tap()
        }

        step("the stop button is displayed") {
            XCTAssert(app.buttons["Stop"].exists == true)
        }

        step("the start button is not displayed") {
            XCTAssert(app.buttons["Start"].exists == false)
        }

        step("the stop button is not displayed") {
            XCTAssert(app.buttons["Stop"].exists == false)
        }
    }
}
