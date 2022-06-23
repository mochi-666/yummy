class CreateAtmosphereStoreRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :atmosphere_store_relations do |t|
      t.integer :store_id
      t.integer :atmosphere_id

      t.timestamps
    end
  end
end
