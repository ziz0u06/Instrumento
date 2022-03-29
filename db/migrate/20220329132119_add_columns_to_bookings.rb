class AddColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :date, :date
    add_column :bookings, :status, :boolean
    add_reference :bookings, :instrument, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
