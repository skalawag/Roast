class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :profile_id
      t.integer :order_id
      t.integer :quantity

      t.timestamps
    end
  end
end
