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

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
