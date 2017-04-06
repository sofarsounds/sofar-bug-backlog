class AddDefaultToBugType < ActiveRecord::Migration
  def change
  	change_column(:tasks, :bug_type, :integer, default: 1)
  end
end
