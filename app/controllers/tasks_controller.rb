class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update]
 
  def new
    @task = Task.new

    render 'new'
  end 
    
  def create
    @task = Task.new(task_params)

    if @task.save!
      flash = 'Task created'
    else
      flash = 'Something went wrong'
    end
    redirect_to candidates_path
  end

  def edit; end

  def update
    if @task.update(task_params)
      flash = 'Task updated'
    else
      flash= 'Something went wrong'
    end
    redirect_to candidates_path
  end

  private

  def set_task
    @task = Task.find_by(candidate_ids: params[:id])
  end

  def task_params
    params.require(:task).permit(
      :title,
      :description,
      candidate_ids: []
    )
  end
end
