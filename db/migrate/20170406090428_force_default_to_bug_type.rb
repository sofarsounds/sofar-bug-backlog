class ForceDefaultToBugType < ActiveRecord::Migration
  def change
  	change_column_default(:tasks, :bug_type, 1)
  end
end
