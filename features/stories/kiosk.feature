Feature: Kiosk Mode
  So that the bug board looks great on a TV
  As a user
  The bugboard website should have a kiosk mode, without a big header and no buttons

  Scenario: Visit Kiosk page
    When  I visit the kiosk page
    Then  I should not see a big header
      And I should not see row +1 buttons
      And I should not see row edit buttons
      And I should not see row delete buttons
