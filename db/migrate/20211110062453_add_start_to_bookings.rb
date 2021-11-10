class AddStartToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :start, :date
  end
end
