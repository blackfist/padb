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

When(/^I check "(.*?)"$/) do |arg1|
  check(arg1)
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

Then(/^the last incident should have the following attributes:$/) do |table|
  @incident = Incident.last
  table.rows_hash.each do |row|
    expect(@incident.send(row[0]).to_s).to eq(row[1])
  end
end

Given(/^the following user record:$/) do |table|
  table.hashes.each do |row|
    User.create!({email:row['email'], username: row['username'], password:row['password'], admin:row['admin']})
  end
end

Given(/^I log in as "(.*?)" with password "(.*?)"$/) do |email, password|
  visit new_user_session_path
  fill_in "user_username", with: email
  fill_in "user_password", with: password
  click_button "Sign in"
end
