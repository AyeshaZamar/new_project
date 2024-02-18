Feature: Validate the Home feature Gherkin

  Background:
    Given Launch the browser
    When "https://www.amazon.in/"
    Then The homepage has been opened


  @Homepage
  Scenario: Open homepage
    And Click on search bar
    And Provide the cloth brand name "Levis"
    And Click on Search icon
#    And Click on any cloth
    And Double click on any dress image
    And Take screenshot
    Then Close the image

  Scenario: Add the item to the cart
    And Select any dress
    And Click on Add to cart
    Then Go to cart
    Then Close the browser
#    And Click on search bar
#    And Provide the cloth brand name "Levis"
#    And Click on Search icon
#    Then Add the item to cart
#
##Scenario Outline: Login with invalid credentials
#    And Provide the username "<username>" and password "<password> "
#    And Click on the Login button
#    Then Login is failed and invalid credential error is displayed
#    Then Close the browser
#    Examples:
#      | username | password |
#      | abcd     | 1234     |
#      | 35473    | afsdf    |
#
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
##    Then Close the browser
##