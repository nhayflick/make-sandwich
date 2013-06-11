class OrderCondiment < ActiveRecord::Base
  attr_accessible :order_id, :condiment_id, :condiment

  belongs_to :order
  belongs_to :condiment

  validates :order, :condiment, presence: true

end
