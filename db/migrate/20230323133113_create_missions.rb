class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :mission_type
      t.integer :price
      t.date :mission_date
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
