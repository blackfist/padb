Given(/^the following departments exist:$/) do |table|
  table.hashes.each do |hash|
    Department.create!(name: hash['name'], city: hash['city'], state: hash['state'])
  end
end

Given(/^that I am at the department index page$/) do
  visit departments_path
end

Then(/^I should be on the department index page$/) do
  expect(current_path).to eq(departments_path)
end
