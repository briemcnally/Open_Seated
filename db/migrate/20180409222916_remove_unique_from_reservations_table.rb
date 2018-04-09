class RemoveUniqueFromReservationsTable < ActiveRecord::Migration[5.1]
  def change
    remove_index :reservations, :user_id
    remove_index :reservations, :restaurant_id
  end
end
