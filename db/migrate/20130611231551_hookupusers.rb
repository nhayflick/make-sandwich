class Hookupusers < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
  end
end
