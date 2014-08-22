class Profile < ActiveRecord::Base
	has_many :ingredients
	has_many :beans, :through => :ingredients
end
