class ChangeIndexToReviews < ActiveRecord::Migration[5.1]
  def change
    add_index :favorites, [:user_id, :restaurant_id], unique: true
  end
end
