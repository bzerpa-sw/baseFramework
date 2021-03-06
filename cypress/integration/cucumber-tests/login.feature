Feature: Login to Application

    As a invalid user
    I cannot log into application
    As a valid user
    I want to log in into the Application

    Scenario: Invalid login
    Given I open login page
    And I want to wait 2000 miliseconds
    And I see "Zero - Log in" in the title
    When I fill username with "invalid"
    And I fill password with "invalid"
    And I click on submit login
    Then I should see error message

    Scenario: Valid login
    Given I open login page
    When I fill username with "username"
    And I fill password with "password"
    And I click on submit login
    Then I should see homepage

