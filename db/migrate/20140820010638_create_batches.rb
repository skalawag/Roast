class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :beans_id
      t.integer :amount

      t.timestamps
    end
  end
end
