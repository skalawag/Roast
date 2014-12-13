class CreateChunks < ActiveRecord::Migration
  def change
    create_table :chunks do |t|
      t.integer :order_id
      t.integer :bean_id
      t.float :quantity

      t.timestamps
    end
  end
end
