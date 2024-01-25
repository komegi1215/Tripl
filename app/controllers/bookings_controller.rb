class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = @user.bookings
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
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to trips_path(@booking.trip), status: :see_other
  end
end
