class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all

    render json: reservations
  end

  def create
    reservation = Reservation.create(reservation_params)
    if reservation.valid?
      render json: reservation
    else
      render json: {errors: reservation.errors.full_messages}, status: 422
    end
  end

  def update
    reservation = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      render json: reservation
    else
      render json: {errors: reservation.errors.full_messages}, status: 422
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.delete
  end


  private
    def reservation_params
      params.permit(:title, :venue, :date, :time, :user_id)
    end
end
