Given(/^a task exists of default bug type$/) do
  @task = Task.create(title: "My task")
end

Given(/^a task exists of (\d+) bug type$/) do |bug_type|
  @task = Task.create(
    title:      "My task",
    bug_type:   bug_type
  )
end
