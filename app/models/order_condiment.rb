class OrderCondiment < ActiveRecord::Base
  attr_accessible :order_id, :condiment

  belongs_to :order

  validates :order_id, :condiment, presence: true
  validates :order_id, uniqueness: [scope: :condiment]
  
end
