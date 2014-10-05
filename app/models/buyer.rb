# == Schema Information
#
# Table name: buyers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  balance    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Buyer < ActiveRecord::Base
  validates :name, presence:  true

  has_one :card
  accepts_nested_attributes_for :card

  validates_presence_of :card
end
