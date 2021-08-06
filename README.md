Stopwatch
==========

Welcome to our sample stopwatch app with the automation framework on top! The framework is called XCTest-Gherkin and was originally got from this Git repo https://github.com/net-a-porter-mobile/XCTest-Gherkin.

Within this repo you'll see the `StopwatchUITestsGherkin` folder. This folder contains the tests. We have a fairly simple folder structure:
- `StopwatchUITestsGherkin`
    - `Features`
        - Feature files live here
    - `StepsAndPages`
        - Step files live here
        - Page files live here

The Feature files contain our test scenarios, these are written in standard Gherkin BDD format.
The Step files contain the step definitions.
The Page files contain the element definitions and any relevant functions.


##### First things to do...
1. Clone the repo and create your own branch
1. In Xcode, have a look around and familiarise yourself with the `StopwatchUITestsGherkin` folder
1. Try running the tests
1. Implement the 'Stop' button element definition and replace the current implementation in the steps
1. Replace all `XCTAssert` statements with Nimble expect statements
1. Give your Nimble expect statements some helpful fail messages
1. Adapt the step definitions to use regex for the button names
1. See what else you can do!



---

###### The below is from the original stopwatch app from Github

Stopwatch is a Swift App that measures amount of time elapsed from a particular time. It highly mocks the stopwatch of Apple's offical App called Clock. This app supports functions such as lap record, time resume, and stopwatch reset.

## Screenshots
![Stopwatch](./Stopwatch.gif)

Note: The app here is from https://github.com/soapyigu/Swift-30-Projects, with the XCTest-Gherkin framework added.
