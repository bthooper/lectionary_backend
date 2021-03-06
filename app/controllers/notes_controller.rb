class NotesController < ApplicationController

  def index
    notes = Note.all
    render json: NoteSerializer.new(notes) 
  end

  def show
    note = Note.find(params[:id])
    render json: NoteSerializer.new(note)
  end

  def create
    note = Note.new(note_params(:title, :content))
    note.save
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
  end

  def update
    note = Note.find(params[:id])
    note.update(update_params)
    note.save
  end

  private

  def note_params(*args)
    params.require(:data).require(:attributes).permit(*args)
  end

  def update_params
    params.permit(:content, :title)
  end

end

