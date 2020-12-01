class SchedulesController < ApplicationController

  def index
    @schedules = current_lectionary.schedules 
    render json: @schedules 
  end

  def show
    @schedule = current_lectionary.schedules.find(params[:id])
    render json: @schedule
  end

  private

  def current_lectionary
    Lectionary.find_by(params[:lectionary_id])
  end
  
end
