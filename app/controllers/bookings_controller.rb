class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = @user.bookings
    @trips = @user.trips
    if pending_any?(@user)
      @trip_bookings = @user.trips
    else
      @trip_bookings = "none"
    end
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

    if @trip.user == @user
      flash.alert = "You cannot book a trip you organized!"
      render 'new', status: :unprocessable_entity
    elsif booked_already?(@user.bookings, @trip.id)
      flash.alert = "You have already booked this trip!"
      render 'new', status: :unprocessable_entity
    else
      @booking.save
      redirect_to bookings_path
    end
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
    params.require(:booking).permit(:booking_status)
  end

  def booked_already?(user_bookings, trip_id)
    bookings = []
    user_bookings.map do |booking|
      bookings << booking.trip_id
    end
    bookings.include?(trip_id)
  end

  def pending_any?(user)
    bookings_status = []
    user.trips.each do |trip|
      trip.bookings.map do |booking|
        bookings_status << booking.booking_status
      end
    end
    bookings_status.include?(1)
  end
end
