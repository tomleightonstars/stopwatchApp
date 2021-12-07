Feature: Add outcomes to bet slip

    Scenario Outline: Tests that are an outline
        Given the <startOrStop1> button is displayed
        And the <startOrStop2> button is not displayed
        When I select the <startOrStop1> button
        Then the <startOrStop2> button is displayed
        And the <startOrStop1> button is not displayed

        Examples:
            | startOrStop1 | startOrStop2 |
            | start        | stop         |
            | stop         | start        |
