class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_action :signed_in_seller
  private

  def signed_in_seller
    redirect_to signin_path, notice: "Пожалуйста, авторизуйтесь" unless signed_in?
    #@current_seller ||= Seller.find(session[:seller_id]) if session[:seller_id]
    #redirect_to signin_path, notice: "Пожалуйста, авторизуйтесь"  if signed_in?
  end
  helper_method :current_seller
end
