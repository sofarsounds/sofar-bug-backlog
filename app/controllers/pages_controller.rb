class PagesController < ApplicationController
end

class PagesController < ApplicationController
  def home
  	@tasks = Task.order(priority: :desc, reported_count: :desc)
    @active_tasks_count = Task.where.not(:completed).count
    @late_tasks_count = Task.where.not(:completed).where("created_at >= ?", 10.days.ago).count
  end
end
