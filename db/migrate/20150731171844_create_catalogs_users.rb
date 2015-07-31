class CreateCatalogsUsers < ActiveRecord::Migration
  def change
    create_table :catalogs_users do |t|
      t.string :name
      t.string :email
      t.string :user_name

      t.timestamps null: false
    end
  end
end
