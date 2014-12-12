class Batch < ActiveRecord::Base
  belongs_to :beans, :dependent => :destroy
end
