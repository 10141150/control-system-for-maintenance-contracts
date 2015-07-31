class CreateCatalogsSuppliers < ActiveRecord::Migration
  def change
    create_table :catalogs_suppliers do |t|
      t.string :business_name
      t.string :contact
      t.string :phones
      t.string :email

      t.timestamps null: false
    end
  end
end
