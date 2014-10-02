# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  count      :float
#  identifier :string(255)
#  buyer_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Card < ActiveRecord::Base
  belongs_to :buyer

  has_many :operations
  has_many :sellers, through: :operations

end
