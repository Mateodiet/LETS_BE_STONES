class RemoveBookingFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :booking, null: false, foreign_key: true
  end
end
