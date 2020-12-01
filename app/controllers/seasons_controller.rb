class SeasonsController < ApplicationController

  def index
    seasons = current_schedule.seasons
    render json: seasons 
  end

  def show
    season = current_schedule.seasons.find(params[:id])
    render json: season
  end

  private

  def current_schedule
    Schedule.find_by(params[:schedule_id])
  end
  
end
