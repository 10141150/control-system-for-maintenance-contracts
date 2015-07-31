json.array!(@catalogs_suppliers) do |catalogs_supplier|
  json.extract! catalogs_supplier, :id, :business_name, :contact, :phones, :email
  json.url catalogs_supplier_url(catalogs_supplier, format: :json)
end
