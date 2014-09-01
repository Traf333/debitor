class Buyer < ActiveRecord::Base
  has_many :operations
end
