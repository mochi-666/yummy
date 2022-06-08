class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :gernre_id
      t.integer :tag_id
      t.integer :scene_id
      t.integer :atmosphere_id
      t.integer :store_images_id
      t.string :name
      t.string :image_id
      t.text :explanation

      t.timestamps
    end
  end
end
