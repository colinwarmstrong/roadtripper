class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :trip, foreign_key: true
      t.string :source

      t.timestamps
    end
  end
end
