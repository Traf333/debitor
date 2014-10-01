class HomePagesController < ApplicationController
  def home

    @operations = current_seller.operations

    @operation = Operation.new

  end
end
