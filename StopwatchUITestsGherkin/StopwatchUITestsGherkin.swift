//
//  GherkinUITests.swift
//  GherkinUITests
//
//  Created by Tom Leighton on 12/02/2021.
//  Copyright © 2021 The Stars Group. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin
// import Nimble
let app = XCUIApplication()

class TestBase: NativeTestCase {
    
    public override class func setUp() {
        // beforeAll
        //Helpers().disableAnimation()
        super.setUp()
    }

    public override func setUpWithError() throws {
        // beforeEach
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    public override func tearDownWithError() throws {
        // afterEach
        super.tearDown()
    }

    override class func tearDown() {
        // afterAll
    }

    override class open func path() -> URL? {
        let bundle = Bundle(for: self)
        return bundle.resourceURL
    }
}
