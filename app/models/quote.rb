class Quote < ActiveRecord::Base
  attr_accessible :body, :author

  validates :body, :author, presence: true
end
