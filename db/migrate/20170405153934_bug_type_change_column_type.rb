class BugTypeChangeColumnType < ActiveRecord::Migration
  def change
  	change_column(:tasks, :bug_type, :integer)
  end
end
