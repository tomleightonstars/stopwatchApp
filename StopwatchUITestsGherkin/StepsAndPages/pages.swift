import Foundation
import XCTest

class Stopwatch {
    static let start = app.buttons["Start"]
    static let stop = app.buttons["Stop"]
    static let reset = app.buttons["Reset"]
    static let lap = app.buttons["Lap"]
    static let timer = app.staticTexts.element(boundBy: 1)
    static let lapTimer = app.staticTexts.element(boundBy: 0)
    static let lapOneTime = app.staticTexts.element(boundBy: 5)
}


