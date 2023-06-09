class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :booking_start_date
      t.date :booking_end_date
      t.boolean :cancelled
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
