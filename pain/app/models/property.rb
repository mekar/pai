class Property < ActiveRecord::Base
  attr_accessible  :title, :description, :dimensions, :price, :status, :expiry_date
  has_one :user
  has_one :image
  has_one :address
end
