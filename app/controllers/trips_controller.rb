class TripsController < ApplicationController
  def index
    @user = current_user
    if params[:query].present?
      @trips = Trip.search_by_title_and_description(params[:query])#.excluding(@user.trips)
    else
      @trips = Trip.all#.excluding(@user.trips)
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @bookings = @trip.bookings
    @users = User.where(id: @bookings.pluck(:user_id))
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :trip_date, :budget, :start_time, :end_time, photos: [])
  end
end
