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

class Seller < ActiveRecord::Base


  has_secure_password

  has_many :operations
  has_many :cards, through: :operations

  before_create :create_remember_token


  validates_presence_of :password, :name



  def Seller.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Seller.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def admin?
    true
  end

  def operations_count
    operations.today.size
  end

  def total_for_day
    operations.today.map(&:value).sum
  end

  private

  def create_remember_token
    self.remember_token = Seller.encrypt(Seller.new_remember_token)
  end

end
