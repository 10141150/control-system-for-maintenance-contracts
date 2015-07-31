class CreateCatalogsContracts < ActiveRecord::Migration
  def change
    create_table :catalogs_contracts do |t|
      t.integer :device_id
      t.integer :supplier_id
      t.date :start_date
      t.date :end_date
      t.string :contract_no

      t.timestamps null: false
    end
  end
end
