class Catalogs::Siteview < ActiveRecord::Base
belongs_to :Contract
validates :contract_id, :visit_date, :completed, :Contract, presence: true
end
