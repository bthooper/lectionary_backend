class SchedulesController < ApplicationController

  def index
    schedules = current_lectionary.schedules 
    render json: ScheduleSerializer.new(schedules) 
  end

  def show
    schedule = current_lectionary.schedules.find(params[:id])
    options = {include: [:seasons]}
    render json: ScheduleSerializer.new(schedule) 
  end

  private

  def current_lectionary
    Lectionary.find_by(id: params[:lectionary_id])
  end
  
end
