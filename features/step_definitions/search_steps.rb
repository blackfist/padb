Given(/^the elasticsearch indexes are clean$/) do
  # Incident.__elasticsearch__.client = Elasticsearch::Client.new log: true
  # Department.__elasticsearch__.client = Elasticsearch::Client.new log: true
  Incident.__elasticsearch__.create_index! index: Incident.index_name
  Department.__elasticsearch__.create_index! index: Department.index_name
  sleep(2)
end

When(/^I enter "(.*?)" into the search field$/) do |arg1|
  fill_in "search_query", with: arg1
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end
