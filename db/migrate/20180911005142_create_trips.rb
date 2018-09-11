class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :days
      t.integer :distance
      t.integer :buddies

      t.timestamps
    end
  end
end
