class StopTimesController < ApplicationController
  def create
    StopTime.create(stop_time_params)
    redirect_to root_path
  end

  private
  def stop_time_params
    params.permit(:theme_id)
  end
end