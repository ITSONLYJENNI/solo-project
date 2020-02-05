class WeatherController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  
  def index
    @city = City.new
    @cities = City.all
  end
end
