class AddEndingDateToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :ending_date, :date
  end
end
