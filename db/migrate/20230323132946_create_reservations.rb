class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :reservation_start_date
      t.date :reservation_end_date
      t.boolean :cancelled
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
