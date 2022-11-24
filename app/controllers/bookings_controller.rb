class BookingsController < ApplicationController
  before_action :set_vehicule, only: %i[new create]


  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.vehicule = @vehicule
    @booking.user = current_user
    @booking.save
  end


private
  def set_vehicule
    @vehicule = Vehicule.find(params[:vehicule_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :vehicule_id, :user_id)

  end
end
