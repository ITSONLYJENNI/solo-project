class WeatherController < ApplicationController
  before_action :authenticate_user!
  def index
    @city = City.new
    @cities = City.all
  end
end
