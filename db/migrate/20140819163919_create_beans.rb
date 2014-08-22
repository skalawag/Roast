class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
