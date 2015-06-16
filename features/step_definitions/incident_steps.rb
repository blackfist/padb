Given(/^that I am at the new incident page$/) do
  visit new_incident_path
end

When(/^I enter the following answers:$/) do |table|
#  save_and_open_page
  table.rows_hash.each do |row|
    if ["incident_form_summary",
        "incident_form_year",
        "incident_form_department_city",
        "incident_form_department_name"].include?(row[0])
      fill_in row[0], with: row[1]
    else
      select row[1], from: row[0]
    end
  end
end

When(/^I click "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should be on the incident index page$/) do
  # current_path.should == incidents_path
  expect(current_path).to eq(incidents_path)
end

And(/^I should see "(.*?)"$/) do |content|
  # page.should have_content(content)
  expect(page).to have_content(content)
end

Then(/^I should have (\d+) incident$/) do |count|
  # Incident.count.should == count.to_i
  expect(Incident.count).to eq(count.to_i)
end
