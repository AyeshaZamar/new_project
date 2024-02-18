Feature: Validate the Signin feature Gherkin

  Background:
    Given Launch the browser
    When "https://www.amazon.in/"
    Then The Signin portal has been opened


  @valid_login
  Scenario: Signin with valid credentials
    And Provide the emailid "tester123@gmail.com"
    And Click on the continue button
    And Provide the password "selenium123"
    Then Click on sign in button
    Then SignIn successfully
    Then Close the browser

  Scenario Outline: Signin with invalid credentials
    And Provide the emailid "2378@gmail"
    And Click on the continue button
    Then Incorrect emailid  error is displayed
    Then Close the browser
    Examples:
      | emailid         | password |
      | abcd@gmail      | 1234     |
      | RRTTT@yahoooooo | afsdf    |

#    And Provide the password "selenium123"
#    Then Click on sign in button
#    Then SignIn successfully



#  Scenario: Login with empty username
#    And Provide the password "admin123"
#    And Click on the Login button
#    Then Login is failed and empty username error is displayed
#    Then Close the browser
#
#  Scenario: Login with empty password
#    And Provide the username "Admin"
#    And Click on the Login button
#    Then Login is failed and empty password error is displayed
#    Then Close the browser'''''''''''''''''''''''''''''''''''''''''''''''''''''''