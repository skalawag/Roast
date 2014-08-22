class AddGreenWeightToBeans < ActiveRecord::Migration
  def change
    add_column :beans, :green_weight, :integer
  end
end
