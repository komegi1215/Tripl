class AddBudgetToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :budget, :float
  end
end
