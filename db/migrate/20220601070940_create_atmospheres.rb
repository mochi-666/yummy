class CreateAtmospheres < ActiveRecord::Migration[5.2]
  def change
    create_table :atmospheres do |t|
      t.string :name
      t.timestamps
    end
  end
end
