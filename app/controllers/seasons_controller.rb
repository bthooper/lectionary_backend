class SeasonsController < ApplicationController

  def index
    seasons = current_schedule.seasons
    render json: SeasonSerializer.new(seasons) 
  end

  def show
    season = current_schedule.seasons.find(params[:id])
    render json: SeasonSerializer.new(season) 
  end

  private

  def current_schedule
    Schedule.find_by(id: params[:schedule_id])
  end
  
end
