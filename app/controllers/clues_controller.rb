class CluesController < ApplicationController
  # respond_to :html, :js

  def index
    @clues = Clue.all.order(id: :asc)
  end

  def edit
    @clue = Clue.find(params[:id])
  end

  def update
    @clue = Clue.find(params[:id])

    guess = clue_params[:guess].downcase
    if (guess === @clue.answer)
      @clue.update(clue_params)
    else
      flash[:notice] = "WTF Try Again!"
      render :edit
    end
  end

private
  def clue_params
    params.require(:clue).permit(:guess)
  end
end
