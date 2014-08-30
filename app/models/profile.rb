class Profile < ActiveRecord::Base
	has_many :ingredients
	has_many :beans, :through => :ingredients
	before_save :check_ratio

	def check_ratio
	end

	def beanlist
		bean_array = []
		Bean.all.each do |b|
			bean_array << [b.name, b.id]
		end
		bean_array
	end
end
