class Bean < ActiveRecord::Base
	has_many :ingredients, :dependent => :destroy
	has_many :profiles, :through => :ingredients

# Used to show the beans within a profile and its ratio. Should try moving this to profiles instead.
  def ratio
    i = Ingredient.find_by bean_id: id
    i.quantity
  end
end
