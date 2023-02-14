class TasksController < ApplicationController
  # read all
  def index
    @tasks = Task.all
  end

  # read one
  def show
    @task = Task.find(params[:id])
  end

  # create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to show_path(@task)
  end

  # update
  def edit
    @task = Task.find(params[:id])
  end

  # def update
  #   @task =
  # end
  # destroy
end

private

def task_params
  params.require(:task).permit(:title, :details)
end
