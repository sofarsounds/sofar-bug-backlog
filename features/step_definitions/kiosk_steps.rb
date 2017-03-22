When(/^I visit the kiosk page$/) do
  visit kiosk_path
end

Then(/^I should not see a big header$/) do
  expect(page).to_not have_selector :css, '.hero-unit'
end

Then(/^I should not see row \+(\d+) buttons$/) do |arg1|
  expect(page).to_not have_selector :css, '.hero-plus'
end

Then(/^I should not see row edit buttons$/) do
  expect(page).to_not have_selector :css, '.icon-edit'
end

Then(/^I should not see row delete buttons$/) do
  expect(page).to_not have_selector :css, '.icon-remove'
end

Then(/^I should not see completed col$/) do
  expect(page).to_not have_selector :css, '.icon-remove'
end

Then(/^I should not see hyperlinks$/) do
  expect(page).to_not have_selector :css, 'td a'
end
