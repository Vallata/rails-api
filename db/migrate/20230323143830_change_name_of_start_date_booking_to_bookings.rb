class ChangeNameOfStartDateBookingToBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :booking_start_date, :start_date
    rename_column :bookings, :booking_end_date, :end_date
  end
end
