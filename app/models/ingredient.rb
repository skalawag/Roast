class Ingredient < ActiveRecord::Base
  belongs_to :profile
  belongs_to :bean
end
