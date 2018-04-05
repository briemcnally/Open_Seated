class AddLnameColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lname, :string
  end
end
