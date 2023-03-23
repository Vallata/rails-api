class ChangeNameOfDatesReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :reservation_start_date, :start_date
    rename_column :reservations, :reservation_end_date, :end_date
  end
end
