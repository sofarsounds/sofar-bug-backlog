Feature: Homepage exists
  So that I can see overdue tasks more clearly
  As a user
  The number of days consistuting an overdue bug should vary depending on importance

  Scenario: See overdue days key
    When I visit the homepage
    Then I should see "Red means late! Highest: 3 days, high: 10 days, medium: 20 days, low: 30 days."

  Scenario Outline: Overdue edge cases
    Given a task exists of <priority> priority and <days> days since created
    Then the task <is_overdue> overdue

    Examples:
      | priority  | days | is_overdue |
      | highest   | 2    | is not     |
      | highest   | 3    | is         |
      | high      | 9    | is not     |
      | high      | 10   | is         |
      | medium    | 19   | is not     |
      | medium    | 20   | is         |
      | low       | 29   | is not     |
      | low       | 30   | is         |
