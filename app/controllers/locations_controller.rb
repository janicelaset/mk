class LocationsController < ApplicationController

  def index
  end

  def update
    @clue = Clue.find(params[:id])
    @clues = Clue.all

    @location = Location.first
    @location.update(location_params)
binding.pry
    redirect_to clues_path
  end

private
  def location_params
    params.require(:location).permit(:guess)
  end
end
