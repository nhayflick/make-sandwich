class CreateCondiments < ActiveRecord::Migration
  def change
    create_table :condiments do |t|
      t.string :name

      t.timestamps
    end
  end
end
