class Sale < ActiveRecord::Base
  validates_presence_of :buyer, :description, :price, :amount, :address, :provider
end
