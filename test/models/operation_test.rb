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

require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
