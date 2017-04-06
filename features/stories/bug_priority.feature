Feature: Bug Priorities
  So that I can differentiate between different priority bugs
  As a user
  The tasks should have a bug priority field

  Scenario: Default bug priority
    Given a task exists of default bug priority
    When I visit the homepage
    Then I should see "Medium"

  Scenario Outline: Bug priorities
    Given a task exists of <bug_priority> bug priority
    When I visit the homepage
    Then I should see <readable_bug_priority>

    Examples:
      | bug_priority  | readable_bug_priority |
      | 0             | "Low"                 |
      | 1             | "Medium"              |
      | 2             | "High"                |
      | 3             | "Highest"             |
