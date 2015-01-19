class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    if @task.save 
      flash[:success] = 'Task was successfully saved!'
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js
      end
    else
      flash[:error] = 'A problem occurred while saving the task.'
      render :create
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
