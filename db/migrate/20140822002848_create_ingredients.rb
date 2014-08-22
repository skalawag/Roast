class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :profile_id
      t.integer :bean_id
      t.float :quantity

      t.timestamps
    end
  end
end
