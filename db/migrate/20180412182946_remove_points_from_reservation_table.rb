class RemovePointsFromReservationTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :points
  end
end
