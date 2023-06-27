Feature: Validate login functionality

  Scenario: Verify user can logout
    Given user open website
    Then verify user is on login page
    When user login with username "login.username" and password "login.password"
    Then verify user is on home page
    When user click on hamburger menu
    And click on logout link
    Then verify user is on login page

  Scenario Outline: Verify user cannot login with invalid credentials
    Given user open website
    Then verify user is on login page
    When user login with username "<username>" and password "<password>"
    Then verify invalid login error message is displayed

    Examples:
      | username           | password               |
      | invalid.login.user | invalid.login.password |
      | locked.username    | login.password         |

