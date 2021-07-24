class CreatePropertyCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :property_characteristics do |t|
      t.integer :property_id
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
