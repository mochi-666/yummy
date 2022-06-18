class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :store_images_id
      t.integer :review_id
      t.string :name
      t.string :image_id
      t.text :explanation
      t.string :area

      t.timestamps
    end
  end
end
