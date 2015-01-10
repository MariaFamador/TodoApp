class DashboardController < ApplicationController
  def home
    @task = Task.new
  end

  def today
    @tasks_today = Task.where(due_date: Date.today)
  end

  def tomorrow
    @tasks_tomorrow = Task.where(due_date: Date.tomorrow)
  end

  def following_days
    @tasks = Task.where.not(due_date: Date.today) && Task.where.not(due_date: Date.today) 
  end
end
