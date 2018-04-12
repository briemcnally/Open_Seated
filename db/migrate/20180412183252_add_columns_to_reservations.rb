class AddColumnsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :phone_number, :string
    add_column :reservations, :occasion, :integer
    add_column :reservations, :request, :string
  end
end
