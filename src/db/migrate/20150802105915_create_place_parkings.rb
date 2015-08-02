class CreatePlaceParkings < ActiveRecord::Migration
  def change
    create_table :place_parkings do |t|
      t.integer :slot_number
      t.string :registration_number
      t.string :color

      t.timestamps null: false
    end
  end
end
