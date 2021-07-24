class CreatePropertyComments < ActiveRecord::Migration[5.1]
  def change
    create_table :property_comments do |t|
      t.integer :property_id
      t.text :comment, limit: 128, null: false

      t.timestamps
    end
  end
end
