Feature: Homepage exists
  So that I can see overdue tasks more clearly
  As a user
  The number of days consistuting an overdue bug should vary depending on importance

  Scenario Outline: Overdue edge cases
    Given a task exists of <importance> and <days>
    Then the task is <overdue>

    Examples:
      | importance | days | overdue |
      | highest    | 2    | false   |
      | highest    | 3    | true    |
      | high       | 4    | false   |
      | high       | 5    | true    |
      | medium     | 14   | false   |
      | medium     | 15   | true    |
      | low        | 24   | false   |
      | low        | 25   | true    |
