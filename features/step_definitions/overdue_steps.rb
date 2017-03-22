### GIVEN

Given(/^a task exists of highest priority and (\d+) days since created$/) do |days|
  @task = Task.create(
    title:      "My task",
    priority:   Task::PRIORITIES[:highest],
    created_at: Time.now - days.to_i.days.ago
  )
end

Given(/^a task exists of high priority and (\d+) days since created$/) do |days|
  @task = Task.create(
    title:      "My task",
    priority:   Task::PRIORITIES[:high],
    created_at: Time.now - days.to_i.days.ago
  )
end

Given(/^a task exists of medium priority and (\d+) days since created$/) do |days|
  @task = Task.create(
    title:      "My task",
    priority:   Task::PRIORITIES[:medium],
    created_at: Time.now - days.to_i.days.ago
  )
end

Given(/^a task exists of low priority and (\d+) days since created$/) do |days|
  @task = Task.create(
    title:      "My task",
    priority:   Task::PRIORITIES[:low],
    created_at: Time.now - days.to_i.days.ago
  )
end

### THEN

Then(/^the task is not overdue$/) do
  expect(@task.late?).to_not eq true
end

Then(/^the task is overdue$/) do
  expect(@task.late?).to eq true
end
