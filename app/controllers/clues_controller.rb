class CluesController < ApplicationController

  def index
    @clues = Clue.all.order(id: :asc)
    @location = Location.first
    @clue = Clue.first
  end

  def edit
    @clue = Clue.find(params[:id])
    @location = Location.first

  end

  def update
    @clue = Clue.find(params[:id])
    @clues = Clue.all
    @location = Location.first

    guess = clue_params[:guess].downcase
    if (guess === @clue.answer)
      @clue.display = true;
      @clue.update(clue_params)
    else
      #flash[:notice] only disappears at the second redirect
      #flash.now[:notice] will only display for current page
      flash.now[:notice] = "WTF Try Again!"
      render :edit
    end
  end

private
  def clue_params
    params.require(:clue).permit(:guess, :display)
  end
end
