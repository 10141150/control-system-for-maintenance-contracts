class CreateCatalogsSiteviews < ActiveRecord::Migration
  def change
    create_table :catalogs_siteviews do |t|
      t.integer :contract_id
      t.date :visit_date
	  t.boolean :completed
	  
      t.timestamps null: false
    end
  end
end
