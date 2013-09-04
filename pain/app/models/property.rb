class Property < ActiveRecord::Base
  attr_accessible :code, :description, :dimensions, :price, :title, :type
end
