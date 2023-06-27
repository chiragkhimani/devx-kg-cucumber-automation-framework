Feature: Navigation Test

  Scenario: Verify user can place order
    Given user open website
    Then verify user is on login page
    When user login with username "login.username" and password "login.password"
    Then verify user is on home page
    And verify user can navigate to product details page for each item