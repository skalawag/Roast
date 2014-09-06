class RenameGreenWeightColumnInBeans < ActiveRecord::Migration
  def change
    rename_column :beans, :green_weight, :weight_loss_factor
  end
end
