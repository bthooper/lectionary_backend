class LectionariesController < ApplicationController

  def index
    lectionaries = Lectionary.all
    render json: LectionarySerializer.new(lectionaries) 
  end

  def show
    lectionary = Lectionary.find(params[:id])
    options = {include: [:schedules]}
    render json: LectionarySerializer.new(lectionary, options)
  end
  
end

