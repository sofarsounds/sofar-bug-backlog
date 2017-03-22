class PagesController < ApplicationController
  def home
  	@tasks = Task.order(priority: :desc, reported_count: :desc)
    @active_tasks_count = Task.where.not(:completed).count
  end
end
