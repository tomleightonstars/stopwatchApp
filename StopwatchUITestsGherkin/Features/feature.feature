Feature: Add outcomes to bet slip

Background: The app is open in default state
        Given the "start" button is displayed
        And the "stop" button is not displayed
        And the timer is set to zero


    Scenario: Start the stopwatch
        When I select the "start" button
        Then the "stop" button is displayed
        And the "lap" button is displayed
        And the "start" button is not displayed
        And the timer is not set to zero


    Scenario: Start the stopwatch, then stop it
        When I select the "start" button
        And I select the "stop" button
        Then the "start" button is displayed
        And the "reset" button is displayed
        And the "stop" button is not displayed
    
    
    Scenario: Start the stopwatch, pause it, then restart it
        When I select the "start" button
        And I select the "stop" button
        And I select the "start" button
        Then the "stop" button is displayed
        And the "lap" button is displayed
        And the "start" button is not displayed


    Scenario: Start the stopwatch, then stop and reset it
        When I select the "start" button
        And I select the "stop" button
        And the timer is not set to zero
        And I select the "reset" button
        Then the "start" button is displayed
        And the "stop" button is not displayed
        And the timer is set to zero
        
        
    Scenario: Start the stopwatch, then record a lap
        When I select the "start" button
        And I select the "lap" button
        And I select the "stop" button
        Then the "reset" button is displayed
        And the "start" button is displayed
        And the timer is not set to zero
        And a time has been recorded for lap 1
        
