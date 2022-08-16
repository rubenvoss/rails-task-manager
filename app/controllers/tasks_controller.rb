class TasksController < ApplicationController
  def all
    @tasks = Task.all
    # raise
  end

  def show
    @task = Task.find(params[:id])
    # raise
  end
end
