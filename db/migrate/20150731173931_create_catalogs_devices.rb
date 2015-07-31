class CreateCatalogsDevices < ActiveRecord::Migration
  def change
    create_table :catalogs_devices do |t|
      t.string :name
      t.string :unam_stock_number
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
