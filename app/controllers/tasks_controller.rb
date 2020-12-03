class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    
  end

  private

  def task_params
    params.require(:task).permit(:title, :text).merge(user_id: current_user.id)
  end
end
