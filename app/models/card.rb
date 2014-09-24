class Card < ActiveRecord::Base
  belongs_to :buyer

  has_many :operations
  has_many :sellers, through: :operations

end
