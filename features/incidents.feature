Feature: Adding Incidents
  In order to keep track of police misconduct
  As a regular user
  I want to enter data

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
    And I click "Submit incident"
    Then I should be on the incident index page
    And I should see "Incident was successfully created."
    And I should have 1 incident
