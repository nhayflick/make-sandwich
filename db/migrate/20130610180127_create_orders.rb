class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :bread
      t.string :meat
      t.string :cheese

      t.timestamps
    end
  end
end
