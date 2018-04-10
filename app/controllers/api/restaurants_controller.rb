class Api::RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @user.save!
      render "api/restaurants/show"
    else
      render json: @user.errors.full_messages, status: 422
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

  def user_params
    params.require(:resaurant).permit(:name, :street_address,
      :city, :state, :zip_code, :num_seats, :cuisine, :img_url,
      :phone_number, :description)
  end

end
