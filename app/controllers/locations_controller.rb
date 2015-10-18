class LocationsController < ApplicationController

  def index
  end

  def edit
    @clue = Clue.find(params[:id])
    @location = Location.first
  end

  def update
    @clue = Clue.find(params[:id])
    @clues = Clue.all

    @location = Location.first

    guess = location_params[:guess].downcase
    if (guess == @location.answer)
      @location.update(location_params)
      redirect_to edit_clue_location_path(@clue, @location)
    else
      flash.now[:notice] = "WTF Try Again!"
      render :edit
    end
  end

private
  def location_params
    params.require(:location).permit(:guess)
  end
end
