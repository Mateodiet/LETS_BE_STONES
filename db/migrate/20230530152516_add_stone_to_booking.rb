class AddStoneToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :stone, null: false, foreign_key: true
  end
end
