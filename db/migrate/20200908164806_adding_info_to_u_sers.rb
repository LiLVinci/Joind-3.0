class AddingInfoToUSers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :description, :text
    add_column :users, :instagram, :string
    add_column :users, :facebook, :string
    add_column :users, :linkedin, :string
  end
end
