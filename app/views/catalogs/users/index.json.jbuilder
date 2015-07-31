json.array!(@catalogs_users) do |catalogs_user|
  json.extract! catalogs_user, :id, :name, :email, :user_name
  json.url catalogs_user_url(catalogs_user, format: :json)
end
