class TasksController < ApplicationController
  def new
    @task = Task.new
  end 
    
  def create
    @task = Task.new(task_params)

    if @task.save
        
    else

    end
  end

  def edit
    @task = Task.find(params[:id])

  end

  def update
    @task = Task.find(params[:id])

  end

  private

  def task_params
    params.require(:task).permit(
      :title,
      :description
    )
  end
end
