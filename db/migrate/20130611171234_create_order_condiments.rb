class CreateOrderCondiments < ActiveRecord::Migration
  def change
    create_table :order_condiments do |t|
      t.integer :order_id
      t.string :condiment

      t.timestamps
    end
    add_index :order_condiments, :order_id
  end
end
