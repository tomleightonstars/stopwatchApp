import Foundation
import XCTest
import XCTest_Gherkin
import Nimble

class NavigationSteps: StepDefiner {
    override func defineSteps() {
        
        step("the \"(.*)\" button is displayed") { (buttonType: String) in
            switch buttonType{
            case "start":
                expect(Stopwatch.start.exists).to(beTrue())
            case "stop":
                expect(Stopwatch.stop.exists).to(beTrue())
            case "lap":
                expect(Stopwatch.lap.exists).to(beTrue())
            case "reset":
                expect(Stopwatch.reset.exists).to(beTrue())
            default:
                XCTFail("Could not find \"\(buttonType)\"")
            }

        }
        
        step("the \"(.*)\" button is not displayed") { (buttonType: String) in
            switch buttonType{
            case "start":
                expect(Stopwatch.start.exists).to(beFalse())
            case "stop":
                expect(Stopwatch.stop.exists).to(beFalse())
            case "lap":
                expect(Stopwatch.lap.exists).to(beFalse())
            case "reset":
                expect(Stopwatch.reset.exists).to(beFalse())
            default:
                XCTFail("Could not find \"\(buttonType)\"")
            }

        }
        
        step("the timer (is|is not) set to zero"){ (displayed: String) in
            if displayed == "is not" {
                expect(Stopwatch.timer.label.contains("00:00:00")).to(beFalse())
            } else {
                    expect(Stopwatch.timer.label.contains("00:00:00")).to(beTrue())
            }
        }
        
        step("a time has been recorded for lap 1"){
            expect(Stopwatch.lapOneTime.exists).to(beTrue())
        }
        
        step("I select the \"(.*)\" button") { (button: String) in
            switch button{
            case "start":
                Stopwatch.start.tap()
            case "stop":
                Stopwatch.stop.tap()
            case "lap":
                Stopwatch.lap.tap()
            case "reset":
                Stopwatch.reset.tap()
            default:
                XCTFail("Could not select \"\(button)\"")
            }
        }
    }
}
