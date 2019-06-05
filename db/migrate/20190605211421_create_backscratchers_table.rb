class CreateBackscratchersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :backscratchers do |t|
      t.string :item_name, null: false
      t.text :item_description, null: false
      t.string :item_size, null: false
      t.string :item_cost, null: false

      t.timestamps null: false
    end
  end
end
