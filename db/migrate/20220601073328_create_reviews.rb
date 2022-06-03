class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :store_id
      t.integer :user_id
      t.string :title
      t.string :image_id
      t.integer :atmosphere_id
      t.string :evaluation

      t.timestamps
    end
  end
end
