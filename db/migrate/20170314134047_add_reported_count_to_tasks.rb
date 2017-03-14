class AddReportedCountToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :reported_count, :integer, default: 0
  end
end
