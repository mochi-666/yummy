class CreateAtmosphereReviewRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :atmosphere_review_relations do |t|
      t.integer :review_id
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end
