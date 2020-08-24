class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.datetime :time
      t.string :location
      t.string :description

      t.timestamps

      t.references :user, foreign_key: true
    end
  end
end
