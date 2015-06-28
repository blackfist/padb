Given(/^the following departments exist:$/) do |table|
  table.hashes.each do |hash|
    Department.create!(name: hash['name'], city: hash['city'], state: hash['state'])
  end
end
