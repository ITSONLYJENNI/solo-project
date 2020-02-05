class CitiesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    current_user.cities.create(city_params)
    @city = current_user.cities.create(city_params)
    if @city.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new 
    @city = City.new
  end

  def index
    @cities = City.all
  end

  def city_params
    params.require(:city).permit(:name)
  end
end
