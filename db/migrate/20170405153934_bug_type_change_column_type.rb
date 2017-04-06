class BugTypeChangeColumnType < ActiveRecord::Migration
  def change
    change_column :tasks, :bug_type, 'integer USING CAST(bug_type AS integer)'
  end
end
