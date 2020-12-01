class DaysController < ApplicationController

  def index
    days = current_season.days
    render json: days 
  end

  def show
    day = current_season.days.find(params[:id])
    render json: day 
  end

  private

  def current_season
    Season.find_by(params[:season_id])
  end
  
end

