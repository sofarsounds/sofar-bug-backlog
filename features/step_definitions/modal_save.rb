Given(/^I click new bug$/) do
  click_on 'New Bug'
end

And(/^I fill in a title$/) do
  fill_in('Title', :with => 'First Bug')
end

When(/^I click "([^"]*)"$/) do
  click_on 'save'
end

Then(/^my new bug task is created$/) do

end
