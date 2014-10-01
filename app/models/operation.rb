class Operation < ActiveRecord::Base
  belongs_to :card
  belongs_to :seller
  default_scope -> { order('created_at DESC') }
end
