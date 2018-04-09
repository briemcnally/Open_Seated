class Api::ReservationsController < ApplicationController
  before_action :require_logged_in!

  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # @reservation.user_id = current_user.id

    if @reservation.save
      render :show
    else
      render json: @reservation.errors.full_messages, status: 422
    end
  end

  def update
    @reservation = current_user.reservations.find(params[:id])

    if @reservation.update_attribures(reservation_params)
      render :show
    else
      render json: @reservation.errors.full_messages, status: 404
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy!
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :num_guests, :date, :time, :points)
  end
end
