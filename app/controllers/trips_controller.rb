class TripsController < ApplicationController
  def create
    flash[:notice] = "Successfully created trip!"
    redirect_to dashboard_path
  end
end
