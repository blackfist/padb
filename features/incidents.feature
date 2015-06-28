Feature: Adding Incidents
  In order to keep track of police misconduct
  As a regular user
  I want to enter data

  Background:
    Given the following user record:
      | username | email      | password    |  admin   |
      | tester | tester@test.com     | tester      | true     |
    And I log in as "tester" with password "tester"

  Scenario: Entering a new incident
    Given that I am at the new incident page
    When I enter the following answers:
      | incident_form_year    | 2014 |
      | incident_form_summary  | Test |
      | incident_form_month   | January   |
      | incident_form_state   | Minnesota   |
      | incident_form_context          | 911 Call |
      | incident_form_department_name  | Test |
      | incident_form_department_level | City |
      | incident_form_department_city | Minneapolis |
      | incident_form_department_state | Minnesota |
    And I check "incident_form_abuse_restrained"
    And I click "Submit incident"
    Then I should be on the incident index page
    And I should see "Incident was successfully created."
    And I should have 1 incident
    And the last incident should have the following attributes:
      | abuse_restrained | true |
