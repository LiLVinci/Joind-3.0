class AddDescriptionToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :description, :text
  end
end
