class AddBookingStatusToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :booking_status, 1
  end
end
