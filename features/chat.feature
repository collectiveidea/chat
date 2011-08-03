@javascript
Feature: Chat
  As a user
  I want to chat with other users
  So I feel like part of a community

  Scenario:
    Given the following users exist:
      | name           |
      | laserlemon     |
      | danielmorrison |
    When I am in Steve's browser
    And I am logged in as "laserlemon"
    And I go to the home page
    Then I should not see "Hello, world!"

    When I am in Dan's browser
    And I am logged in as "danielmorrison"
    And I go to the home page
    And I fill in "Body" with "Hello, world!"
    And I press "Send"
    And I wait 2 seconds
    Then I should see "danielmorrison: Hello, world!"
    And I should see "danielmorrison: Hello, world!" in Steve's browser
