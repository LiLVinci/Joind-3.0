class AddBringwithToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :bring_with, :text
    add_column :events, :exact_location, :string
  end
end
