class TasksController < ApplicationController
  before_action :set_tasks, only: %i[index create update]

  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    Task.all.each do |task|
      task.update(position: task.position += 1)
    end
    @task.position = 0
    @task.done = false
    if @task.save
      redirect_to tasks_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.description = params[:task][:description] unless params[:task][:description].nil?
    @task.done = params[:task][:done] == '1'
    if @task.save
      redirect_to tasks_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update_all
    ids = params[:ids].split(",").map(&:to_i)
    ids.each_with_index do |id, index|
      task = Task.find(id)
      task.update(position: index)
    end
    redirect_to tasks_path
  end

  private

  def task_params
    params.require('task').permit(:description)
  end

  def set_tasks
    @tasks = Task.all.order(position: 'ASC')
  end
end
