class PagesController < ApplicationController
end

class PagesController < ApplicationController
  def home
  	@tasks = Task.all
  end
end
