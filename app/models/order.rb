class Order < ActiveRecord::Base
  attr_accessible :bread, :meat, :cheese, :order_condiment_attributes

  has_many :order_condiments

  accepts_nested_attributes_for :order_condiments, reject_if: :all_blank

  validates :bread, :meat, :cheese, presence: true
end