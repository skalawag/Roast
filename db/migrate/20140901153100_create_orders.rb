class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :profile_id
      t.integer :eight_oz
      t.integer :twelve_oz
      t.integer :sixteen_oz
      t.integer :eighty_oz
      t.integer :total_oz

      t.timestamps
    end
  end
end
