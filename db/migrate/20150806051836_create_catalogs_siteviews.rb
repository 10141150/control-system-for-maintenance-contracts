class CreateCatalogsSiteviews < ActiveRecord::Migration
  def change
    create_table :catalogs_siteviews do |t|
      t.integer :contract_id
      t.date :visit_date
      t.boolean :completed

      t.timestamps null: false
    end
	add_foreign_key(:catalogs_contracts, :catalogs_suppliers, column: 'supplier_id')
	add_foreign_key(:catalogs_contracts, :catalogs_devices, column: 'device_id')
  	add_foreign_key(:catalogs_devices, :catalogs_locations, column: 'location_id')
	add_foreign_key(:catalogs_siteviews, :catalogs_contracts, column: 'contract_id')
	add_index :catalogs_contracts, :device_id, :unique => true
  end
end
