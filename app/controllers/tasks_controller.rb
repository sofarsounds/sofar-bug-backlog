class TasksController < ApplicationController
	layout proc { |controller| controller.action_name == 'kiosk' ? "kiosk" : "application" }
	before_filter :assign_tasks, only: [:index, :kiosk]

	def index
		@kiosk_mode = false
	end

	def kiosk
		@kiosk_mode = true
	end

	def new
	  @task = Task.new
	  render :show_form
	end

	def create
  	@task = Task.new(task_params)
  	save_task
	end

	def destroy
	  @task = Task.find(params[:id])
	  @task.destroy
	  @tasks = Task.all
	end

	def edit
		@task = Task.find(params[:id])
		render :show_form
	end

	def update
	  @task = Task.find(params[:id])
	  @task.assign_attributes(task_params)
	  save_task
	end

	def inc
		@task = Task.find(params[:id])
		Task.increment_counter(:reported_count, @task.id)

		render :update_inc
	end

	protected

	def assign_tasks
		@tasks = Task.order(priority: :desc, reported_count: :desc)
	end

	def save_task
	  if @task.save
	    @tasks = Task.all
	    render :hide_form
	  else
	    render :show_form
	  end
	end

	private

	def task_params
	  params.require(:task).permit(:title, :note, :priority, :bug_type, :completed, :reported_count, :url, :created_at)
	end

end
