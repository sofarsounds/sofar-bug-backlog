Feature: Bug types
  So that I can differentiate between front-end and back-end bugs
  As a user
  The tasks should have a bug type field

  Scenario: Default bug type
    Given a task exists of default bug type
    When I visit the homepage
    Then I should see "Back-end"

  Scenario Outline: Bug types
    Given a task exists of <bug_type> bug type
    When I visit the homepage
    Then I should see <readable_bug_type>

    Examples:
      | bug_type  | readable_bug_type   |
      | 1         | "Backend"          |
      | 2         | "Frontend"         |
