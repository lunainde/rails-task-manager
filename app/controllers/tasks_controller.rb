class TasksController < ApplicationController

  def index
    @tasks = Task.all
    # create index.html
  end

  def show
    @task = Task.find(params[:id])
    # create show.html
  end

  def new
    @task = Task.new
    # create new.html
  end

  def create
    @task = Task.new(task_params)
    # @task = Task.new(params[:task])
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
    # create edit.html
  end

  def update
    @task = Task.find(params[:id])
    @task = Task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end


