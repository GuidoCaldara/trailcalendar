class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :length
      t.integer :elevation
      t.date :date
      t.time :departure_time
      t.text :description
      t.text :goodies
      t.string :location
      t.float :latitude
      t.float :longitude
      t.references :organisation, foreign_key: true
      t.string :race_type
      t.boolean :single_price
      t.string :cover_picture
      t.integer :final_price
      t.integer :first_price
      t.integer :first_price_start
      t.integer :first_price_end
      t.integer :second_price
      t.integer :second_price_start
      t.integer :second_price_end
      t.integer :third_price
      t.integer :third_price_start
      t.integer :third_price_end
      t.text :rules
      t.text :website
      t.string :video
      t.timestamps
    end
  end
end
