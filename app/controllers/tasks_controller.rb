class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  def index
    @tasks = Task.all
    # raise
  end

  def show
    @task = Task.find(params[:id])
    # raise
  end

  def edit
    @task = Task.find(params[:id])
    # raise
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
