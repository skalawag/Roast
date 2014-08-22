class ChangeGreenWeightType < ActiveRecord::Migration
  def change
    change_table :beans do |t|
        t.remove :green_weight
        t.float :green_weight
    end
  end
end
