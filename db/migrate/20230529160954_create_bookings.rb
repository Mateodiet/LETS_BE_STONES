class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :start_date
      t.date :end_date
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
