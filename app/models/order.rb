class Order < ActiveRecord::Base
  attr_accessible :bread, :meat, :cheese, :condiment_ids

  has_many :order_condiments
  has_many :condiments, through: :order_condiments


  accepts_nested_attributes_for :order_condiments, reject_if: :all_blank

  validates :bread, :meat, :cheese, presence: true
end