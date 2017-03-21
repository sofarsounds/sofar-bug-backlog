Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^the window title is "([^"]*)"$/) do |content|
  expect(page).to have_xpath("//title", :text => content)
end
