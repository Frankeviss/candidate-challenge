class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update]
 
  def new
    @task = Task.new
    @task.assignments.build
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
  end

  def task_params
    params.require(:task).permit(
      :title,
      :description,
      assignments_attributes: ['id', 'candidate_id', 'task_id', '_destroy']
    )
  end
end
