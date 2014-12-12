class Order < ActiveRecord::Base
  has_many :profiles, :through => :products
  has_many :products, :dependent => :destroy
  before_save :totals, :ratio_validation

  def profile_list
    profile_array = []
    Profile.all.each do |p|
      profile_array << [p.name, p.id]
    end
    profile_array
  end

  private

  def totals
    self.total_oz = ( self.eight_oz * 8 ) + (self.twelve_oz * 12 ) + (self.sixteen_oz * 16) + (self.eighty_oz * 80)
  end

  def ratio_validation
    Profile.find(self.profile_id).check_ratio
  end

end