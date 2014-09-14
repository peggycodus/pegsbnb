class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.float :lat
      t.float :long
      t.integer :user_id
      t.integer :num_beds
      t.integer :max_guests
      t.decimal :price
      t.integer :min_stay

      t.timestamps
    end
    add_index :properties, :city
    add_index :properties, :postal_code
    add_index :properties, :num_beds
    add_index :properties, :min_stay
  end
end
