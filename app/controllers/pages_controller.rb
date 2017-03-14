class PagesController < ApplicationController
end

class PagesController < ApplicationController
  def home
  	@tasks = Task.order(priority: :desc, reported_count: :desc)
  end
end
