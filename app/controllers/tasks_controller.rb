class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    if @task.save 
      redirect_to "/", notice: "Task was successfully saved!"
    else
      render :new
    end
  end

private
  def task_params
    params.require(:task).permit(
      :due_date,
      :name,
      :user_id
    )
  end
end
