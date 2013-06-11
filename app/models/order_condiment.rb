class OrderCondiment < ActiveRecord::Base
  attr_accessible :order_id, :condiment

  belongs_to :order
  belongs_to :condiment

  validates :order_id, :condiment_id, presence: true
  # validates :order_id, uniqueness: [scope: :condiment]

end
