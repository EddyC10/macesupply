class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :photo
      t.integer :item_id

      t.timestamps
    end
  end
end
