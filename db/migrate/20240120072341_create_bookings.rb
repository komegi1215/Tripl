class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :trip_id, null: false, foreign_key: true
      t.integer :booking_status

      t.timestamps
    end
  end
end
