class CreateSceneStoreRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :scene_store_relations do |t|
      t.integer :store_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
