Given(/^a task exists of default bug priority$/) do
  @task = Task.create(title: "My task")
end

Given(/^a task exists of (\d+) bug priority$/) do |bug_priority|
  @task = Task.create(
    title:      "My task",
    priority:   bug_priority
  )
end
