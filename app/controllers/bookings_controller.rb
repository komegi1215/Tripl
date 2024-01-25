class BookingsController < ApplicationController


  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def show
  end

  def new
  end

  def create
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

  def user_bookings
    @user = User.find(params[:user_id])
  end
end
