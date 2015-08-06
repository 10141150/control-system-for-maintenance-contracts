class Catalogs::Device < ActiveRecord::Base
belongs_to :Contract
belongs_to :Location
validates :name, :unam_stock_number, :location_id, presence: true
end
