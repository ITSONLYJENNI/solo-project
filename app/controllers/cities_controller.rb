class CitiesController < ApplicationController
  before_action :authenticate_user!
  def create
      @city = City.create(city_params)
    if @city.valid?
      redirect_to root_path
    end
  end

  def city_params
    params.require(:city).permit(:name)
  end
end
