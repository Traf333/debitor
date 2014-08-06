class SessionsController < ApplicationController

  def new

  end


  def create
    seller = Seller.find_by(name: params[:name])
    if seller && seller.authenticate(params[:password])
      session[:seller_id] = seller.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    session[:seller_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
  
end
