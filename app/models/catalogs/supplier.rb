class Catalogs::Supplier < ActiveRecord::Base
has_many :Contracts
validates :business_name, :contact, :phones, :email, presence: true
end