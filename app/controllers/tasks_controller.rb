class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update]
 
  def new
    @task = Task.new

    render 'new'
  end 
    
  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = 'Task created'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to candidates_path
  end

  def edit; end

  def update
    if @task.update(task_params)
      flash[:success] = 'Task updated'
    else
      flash[:error] = 'Something went wrong'
    end
  end

  private

  def set_task
    @task = Task.find_by(candidate_id: params[:id].to_s)
  end

  def task_params
    params.require(:task).permit(
      :title,
      :description,
      :candidate_id
    )
  end
end
