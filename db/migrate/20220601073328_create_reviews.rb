class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :store_id
      t.integer :user_id
      t.integer :review_images_id
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
