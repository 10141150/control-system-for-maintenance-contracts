class CreateCatalogsLocations < ActiveRecord::Migration
  def change
    create_table :catalogs_locations do |t|
      t.string :department
      t.string :responsible
      t.string :email

      t.timestamps null: false
    end
  end
end
