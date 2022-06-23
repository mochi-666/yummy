class CreateSceneReviewRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :scene_review_relations do |t|
      t.integer :review_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
