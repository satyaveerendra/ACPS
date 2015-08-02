class CreateParkingAreas < ActiveRecord::Migration
  def change
    create_table :parking_areas do |t|
      t.boolean :capacity

      t.timestamps null: false
    end
  end
end
