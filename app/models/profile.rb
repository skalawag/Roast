class Profile < ActiveRecord::Base
  has_many :ingredients, :dependent => :destroy
  has_many :beans, :through => :ingredients
  has_many :orders, :through => :products
  has_many :products, :dependent => :destroy

  before_save :check_ratio

  def check_ratio
  end

  def bean_list
    bean_array = []
    Bean.all.each do |b|
      bean_array << [b.name, b.id]
    end
    bean_array
  end
end
