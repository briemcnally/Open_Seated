class AddPriceToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :price, :integer
  end
end
