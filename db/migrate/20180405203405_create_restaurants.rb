class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :street_address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.integer :num_seats, null: false
      t.integer :cuisine, null: false
      t.string :img_url
      t.string :phone_number, null: false

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
    add_index :restaurants, :city
    add_index :restaurants, :state
    add_index :restaurants, :cuisine
    add_index :restaurants, :num_seats
  end
end
