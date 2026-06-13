class AddFieldsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :dob, :date, null: false
    add_column :users, :phone_number, :string, null: false
    add_column :users, :address, :string, null: false
  end
end
