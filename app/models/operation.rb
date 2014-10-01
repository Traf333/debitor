class Operation < ActiveRecord::Base
  validates :card_id, :seller_id, presence:  true
  validates :value, numericality: {greater_than: 0}
  belongs_to :card
  belongs_to :seller
  default_scope -> { order('created_at DESC') }
end
