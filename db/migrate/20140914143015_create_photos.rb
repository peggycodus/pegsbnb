class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :property_id
      t.string :file_name
      t.string :content_type
      t.integer :file_size
      t.string :caption

      t.timestamps
    end
    add_index :photos, :property_id
  end
end
