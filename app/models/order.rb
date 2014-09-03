class Order < ActiveRecord::Base
  has_one :profile

  def profile_list
    bean_array = []
    Bean.all.each do |b|
      bean_array << [b.name, b.id]
    end
    bean_array
  end
end
