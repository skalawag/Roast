class Product < ActiveRecord::Base
  belongs_to :profile
  belongs_to :order
end
