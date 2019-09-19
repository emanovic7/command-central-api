class TasksController < ApplicationController

  def index
    tasks = Task.all

    render json: tasks
  end

  def create
    task = Task.create(task_params)
    if task.valid?
      render json: task
    else
      render json: {errors: task.errors.full_messages}, status: 422
    end
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
      render json: task
    else
      render json: {errors: task.errors.full_messages}, status: 422
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.delete
  end


  private
    def task_params
      params.permit(:note, :done, :user_id)
    end

end
