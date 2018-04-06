class AddNeighborhoodToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :neighborhood, :string
  end
end
