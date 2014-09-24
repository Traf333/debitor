class Buyer < ActiveRecord::Base
  has_one :card

  validates_presence_of :card
end
