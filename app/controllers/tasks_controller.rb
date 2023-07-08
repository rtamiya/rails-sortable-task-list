class TasksController < ApplicationController
  before_action :set_tasks, only: %i[index create]
  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.done = false
    if @task.save
      redirect_to tasks_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require('task').permit(:description)
  end

  def set_tasks
    @tasks = Task.all.order(id: 'DESC')
  end
end
