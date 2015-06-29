Feature: Searching for Incidents
  In order to see if an incident has been entered before
  As a regular user
  I want to enter a search term and find matching incidents

  Background:
    Given the elasticsearch indexes are clean
    And the following user record:
      | username | email      | password    |  admin   |
      | tester | tester@test.com     | tester      | true     |
    And the following departments exist:
      | name | city | state |
      | assville pd | assville | KY |
      | buttville pd| buttville | TN |
      | New Hole pd | New Hole | NY |
      | nutsack pd | nutsack | CO |
    And the following incidents exist:
      | summary | year | state | context |
      | test | 2015 | MN | 911 |
      | Mcnutsack was hit in the nuts | 2015 | MN | 911 |
      | Elvis sighted | 2015 | NV | 911|
    And I log in as "tester" with password "tester"

  Scenario: Search for incidents
    Given that I am at the incident index page
    When I enter "Mcnutsack" into the search field
    And I click "Search"
    Then I should be on the incident index page
    And I should see "1 incident and counting"
    And I should see "Mcnutsack was hit in the nuts"
    And I should not see "Elvis sighted"

  Scenario: Search for departments
    Given that I am at the department index page
    When I enter "assville" into the search field
    And I click "Search"
    Then I should be on the department index page
    And I should see "assville pd"
    And I should not see "buttville pd"
