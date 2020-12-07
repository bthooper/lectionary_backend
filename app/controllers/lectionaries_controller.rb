class LectionariesController < ApplicationController

  def index
    lectionaries = Lectionary.all
    render json: LectionarySerializer.new(lectionaries) 
  end

  def show
    lectionary = Lectionary.find(params[:id])
    render json: LectionarySerializer.new(lectionary)
  end
  
end

