class RemoveAmountFromBeans < ActiveRecord::Migration
  def change
    remove_column :beans, :amount, :integer
  end
end
