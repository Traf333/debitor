# == Schema Information
#
# Table name: sellers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  remember_token  :string(255)
#

require 'test_helper'

class SellerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
