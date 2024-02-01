class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = @user.bookings
    @trips = @user.trips
  end

  def show
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @user = current_user
    @trip = Trip.find(params[:trip_id])
    @booking.user = @user
    @booking.trip = @trip
    @booking.save
    redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render 'index', status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
  # TODO: check your model, might be different than mine
  params.require(:booking).permit(:booking_status)
  end
end
