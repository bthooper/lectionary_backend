class DaysController < ApplicationController

  def index
    days = current_season.days
    render json: DaySerializer.new(days)
  end

  def show
    day = current_season.days.find(params[:id])
    render json: DaySerializer.new(day) 
  end

  private

  def current_season
    Season.find_by(id: params[:season_id])
  end
  
end

