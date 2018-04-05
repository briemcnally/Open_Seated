class AddDescriptionToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :description, :string
  end
end
