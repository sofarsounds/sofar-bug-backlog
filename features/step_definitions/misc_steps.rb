Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).to_not have_content content
end

Then(/^the window title is "([^"]*)"$/) do |content|
  expect(page).to have_title content
end

Then(/^I should see "([^"]*)" once$/) do |content|
  save_and_open_page
  expect(page).to have_content content, count: 1
end
