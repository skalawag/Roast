class Bean < ActiveRecord::Base
	has_many :ingredients
	has_many :profiles, :through => :ingredients
end
