class ChangePriorityToIntegerInTasks < ActiveRecord::Migration
  def change
    change_column(:tasks, :priority, 'integer USING CAST(priority AS integer)', default: 1)
  end
end
