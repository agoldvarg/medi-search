class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :generic_name
      t.string :brand
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
