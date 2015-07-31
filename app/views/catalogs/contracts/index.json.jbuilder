json.array!(@catalogs_contracts) do |catalogs_contract|
  json.extract! catalogs_contract, :id, :device_id, :supplier_id, :start_date, :end_date, :contract_no
  json.url catalogs_contract_url(catalogs_contract, format: :json)
end
