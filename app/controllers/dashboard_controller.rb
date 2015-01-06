class DashboardController < ApplicationController
  def home
    @task = Task.new
  end

  def today
  end

  def tomorrow
  end

  def following_days
  end
end
