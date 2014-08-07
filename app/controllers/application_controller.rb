class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
  
  def current_seller
    @current_seller ||= Seller.find(session[:seller_id]) if session[:seller_id]
  end
  helper_method :current_seller
end
