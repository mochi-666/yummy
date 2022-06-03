class CreateAtmospheres < ActiveRecord::Migration[5.2]
  def change
    create_table :atmospheres do |t|
      t.integer :store_id
      t.integer :review_id
      t.string :name
      t.timestamps
    end
  end
end
