class Order < ActiveRecord::Base
  attr_accessible :bread, :meat, :cheese

  validates :bread, :meat, :cheese, presence: true
end