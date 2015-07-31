class CreateCatalogsSiteviews < ActiveRecord::Migration
  def change
    create_table :catalogs_siteviews do |t|
      t.integer :contract_id
      t.date :visit_date

      t.timestamps null: false
    end
  end
end
