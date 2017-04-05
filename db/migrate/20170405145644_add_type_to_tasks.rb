class AddTypeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :bug_type, :string
  end
end
