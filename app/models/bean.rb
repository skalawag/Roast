class Bean < ActiveRecord::Base
	has_many :ingredients
	has_many :profiles, :through => :ingredients

  def ratio
    i = Ingredient.find_by bean_id: self.id
    i.quantity
  end
end
