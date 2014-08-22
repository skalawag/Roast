class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :roast_id
      t.integer :amount

      t.timestamps
    end
  end
end
