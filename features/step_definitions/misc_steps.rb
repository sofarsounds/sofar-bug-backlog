Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).to_not have_content content
end

Then(/^the window title is "([^"]*)"$/) do |content|
  expect(page).to have_title content
end