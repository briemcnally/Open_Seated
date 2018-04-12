class Api::RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render "api/restaurants/show"
    else
      render json: ['All fields are required!'], status: 422
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  def query
    @restaurants = Restaurant.query(params[:searchTerm]).order(:name)
    render :index
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :street_address,
      :city, :state, :zip_code, :num_seats, :cuisine, :img_url,
      :phone_number, :description)
  end

end
