# == Schema Information
#
# Table name: operations
#
#  id         :integer          not null, primary key
#  value      :integer
#  comment    :text
#  seller_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  card_id    :integer
#

class Operation < ActiveRecord::Base
  validates :card_id, :seller_id, presence:  true
  validates :value, numericality: {greater_than: 0}
  belongs_to :card
  belongs_to :seller
  default_scope -> { order('created_at DESC') }

  scope :today, -> { where('updated_at > ?', Date.today)}

  def check_and_save
    card.count += value
    if card.count < card.limit
      card.save if save
    else
      false
    end
  end
end
