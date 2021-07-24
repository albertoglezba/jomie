class CreatePropertyCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :property_characteristics do |t|
      t.integer :property_id
      t.integer :rooms, limit: 2, null: false
      t.float :bathrooms, null: false

      t.timestamps
    end
  end
end
