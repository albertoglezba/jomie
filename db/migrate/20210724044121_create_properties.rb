class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :name
      t.string :real_state_type
      t.text :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
