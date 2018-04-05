class AddFnameColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fname, :string
  end
end
