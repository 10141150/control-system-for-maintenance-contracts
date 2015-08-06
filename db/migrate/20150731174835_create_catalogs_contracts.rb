class CreateCatalogsContracts < ActiveRecord::Migration
  def change
    create_table :catalogs_contracts do |t|
      t.integer :device_id, :null => false
      t.integer :supplier_id, :null => false
      t.date :start_date, :null => false
      t.date :end_date, :null => false
      t.string :contract_no, :null => false

      t.timestamps null: false
    end
	add_foreign_key(:catalogs_contracts, :catalogs_suppliers,  column: 'supplier_id')
	add_foreign_key(:catalogs_contracts, :catalogs_devices, column: 'device_id')
  	add_foreign_key(:catalogs_devices, :catalogs_locations, column: 'location_id')
	add_foreign_key(:catalogs_siteviews, :catalogs_contracts, column: 'contract_id')
	add_index :catalogs_contracts, :device_id, :unique => true
  end
end
