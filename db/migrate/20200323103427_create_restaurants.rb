class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :picture
      t.integer :zomato_id
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
