class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.create!(race_params)
    redirect_to "/races/#{@race.id}"
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])
    @race.update(race_params)
    redirect_to "/races/#{@race.id}"
  end

  def destroy
    @race = Race.find(params[:id])
    @race.destroy
    redirect_to races_path
  end

  private
  def race_params
    params.require(:race).permit(:species, :alignment, :government, :insignia, :description)
  end

end
