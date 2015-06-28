Feature: Authenticating users
  In order to maintain integrity of data
  As a regular user
  I want to be able to log into the application

  Background:
    Given the following user record:
      | username | email      | password    |  admin   |
      | tester | tester@test.com     | tester      | true     |
    And the following departments exist:
      | name | city | state |
      | assville pd | assville | KY |
    And the following incidents exist:
      | summary | year | state | context |
      | test | 2015 | MN | 911 |

  Scenario: Entering the wrong credentials
    Given that I am at the sign in page
    When I log in as "invalid" with password "invalid"
    Then I should be on sign in page
    And I should see "Invalid username or password."

  Scenario: Entering valid credentials
    Given that I am at the sign in page
    When I log in as "tester" with password "tester"
    Then I should be on root page
    And I should see "Signed in successfully."

  Scenario: visit protected page - new incident
    Given that I am not logged in
    When I go to new incident path
    Then I should be on sign in page

  Scenario: visit protected page - edit incident
    Given that I am not logged in
    When I go to edit incident path
    Then I should be on sign in page
