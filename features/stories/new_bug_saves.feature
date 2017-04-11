Feature: Can save a new bug
  So that I can save bugs
  As a user
  The save button saves my input data

Scenario:
  Given I click new bug
  And I fill in a title
  When I click "save"
  Then my new bug task is created
