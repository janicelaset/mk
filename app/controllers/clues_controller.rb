class CluesController < ApplicationController
  def index
    @clues = Clue.all.order(id: :asc)
  end

  def edit
    @clue = Clue.find(params[:id])
  end

  def update
    @clue = Clue.find(params[:id])
    @clue.update(clue_params)
  end

private
  def clue_params
    params.require(:clue).permit(:guess)
  end
end
