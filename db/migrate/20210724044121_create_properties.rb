class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :name, limit: 128, null: false
      t.integer :real_estate_type, limit: 1, null: false
      t.text :street, limit: 128, null: false
      t.string :external_number, limit: 12, null: false
      t.string :internal_number, limit: 12
      t.string :neighborhood, limit: 128, null: false
      t.string :city, limit: 64, null: false
      t.string :country, limit: 2, null: false

      t.timestamps
    end
  end
end
