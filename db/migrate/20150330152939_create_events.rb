class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :reporter
      t.string :content
      t.string :product_code
      t.datetime :event_date
      t.datetime :receive_date
      t.integer :device_id
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
