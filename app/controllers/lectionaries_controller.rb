class LectionariesController < ApplicationController

  def index
    lectionaries = Lectionary.all
    render json: lectionaries
  end

  def show
    lectinoary = Lectionary.find(params[:id])
    render json: lectinoary 
  end
  
end

