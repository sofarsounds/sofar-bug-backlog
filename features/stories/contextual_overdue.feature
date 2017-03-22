Feature: Homepage exists
  So that I can see overdue tasks more clearly
  As a user
  The number of days consistuting an overdue bug should vary depending on importance

  Scenario Outline: Overdue edge cases
    Given a task exists of <priority> priority and <days> days since created
    Then the task <is_overdue> overdue

    Examples:
      | priority  | days | is_overdue |
      | highest   | 2    | is not     |
      | highest   | 3    | is         |
      | high      | 4    | is not     |
      | high      | 5    | is         |
      | medium    | 14   | is not     |
      | medium    | 15   | is         |
      | low       | 24   | is not     |
      | low       | 25   | is         |
