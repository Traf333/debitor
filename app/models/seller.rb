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

  private

  def create_remember_token
    self.remember_token = Seller.encrypt(Seller.new_remember_token)
  end

end
