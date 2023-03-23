class ChangeNameOfNumToListings < ActiveRecord::Migration[7.0]
  def change
    rename_column :listings, :number_of_rooms, :num_rooms
  end
end
