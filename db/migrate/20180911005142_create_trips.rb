class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :days, default: 3
      t.integer :distance
      t.point :start_location
      t.point :end_location
      t.integer :buddies, default: 1

      t.timestamps
    end
  end
end
