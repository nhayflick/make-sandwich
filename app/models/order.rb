class Order < ActiveRecord::Base
  attr_accessible :bread, :meat, :cheese, :condiment_ids, :user_id

  has_many :order_condiments
  has_many :condiments, through: :order_condiments

  belongs_to :user


  accepts_nested_attributes_for :order_condiments, reject_if: :all_blank

  validates :bread, :meat, :cheese, presence: true
end