class PagesController < ApplicationController
  layout proc { |controller| controller.action_name == 'kiosk' ? "kiosk" : "application" }
  before_filter :assign_tasks

  def home
    @kiosk_mode = false
  end

  def kiosk
    @kiosk_mode = true
  end

  private

    def assign_tasks
      @tasks = Task.order(priority: :desc, reported_count: :desc)
    end
end
