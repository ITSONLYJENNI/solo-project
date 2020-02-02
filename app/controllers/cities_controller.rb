class CitiesController < ApplicationController
  before_action :authenticate_user! only: [:create]
  def create
    @city = current_user.cities.create(city_params)
    if @city.valid?
      redirect_to root_path
    end
  end

  def index
    @cities = City.all
  end

  def city_params
    params.require(:city).permit(:name)
  end
end
