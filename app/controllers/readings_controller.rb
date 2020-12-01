class ReadingsController < ApplicationController

  def index
    readings = current_day.readings
    render json: readings 
  end

  def show
    reading = current_day.readings.find(params[:id])
    render json: reading 
  end

  private

  def current_day
    Day.find_by(params[:day_id])
  end
  
end

