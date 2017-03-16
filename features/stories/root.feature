Feature: Homepage exists
  So that I can use the bugboard
  As a user
  The bugboard website should load when I visit it

  Scenario: Visit homepage
    When  I visit the homepage
    Then  I should see "Sofar Bug Board"
