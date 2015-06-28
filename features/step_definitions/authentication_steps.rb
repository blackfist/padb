Given(/^that I am not logged in$/) do
  visit destroy_user_session_path
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

Given(/^that I am at the sign in page$/) do
  visit new_user_session_path
end

Then(/^I should be on sign in page$/) do
  expect(current_path).to eq(new_user_session_path)
end

Then(/^I should be on root page$/) do
  expect(current_path).to eq(root_path)
end

When(/^I go to new incident path$/) do
  visit new_incident_path
end

When(/^I go to edit incident path$/) do
  visit edit_incident_path(Incident.last.id)
end
