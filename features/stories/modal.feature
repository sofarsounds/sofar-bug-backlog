Feature: Modal Popup Exists
	So that I can file a new bug
	As a user
	The popup modal appears when I click the new bug modal

Scenario: Modal Popups 
	Given I visit the homepage
	When I click New Bug
	Then I should see "New Task"


