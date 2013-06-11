class Condiment < ActiveRecord::Base
  attr_accessible :name

  has_many :order_condiments
  has_many :orders, through: :order_condiments
end
