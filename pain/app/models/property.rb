class Property < ActiveRecord::Base
  attr_accessible  :title, :description, :dimensions, :price, :status, :expiry_date, :address_attributes, :image_attributes
  belongs_to :user, dependent: :destroy
  belongs_to :address, dependent: :destroy
  belongs_to :image, dependent: :destroy
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :image
end
