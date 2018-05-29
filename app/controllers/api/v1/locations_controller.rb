class Api::V1::LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: locations
  end

  def create
    location = Location.find_or_create_by(location_params)
    render json: location
  end

  def show
    location = Location.find(params[:id])
    render json: location
  end

  private
  def location_params
    params.permit(:name, :x_lon, :y_lat, :street, :city, :state, :zip)
  end
end
