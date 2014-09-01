class SessionsController < ApplicationController

  def new

  end


  def create
    #raise params.inspect
    seller = Seller.find_by(name: params[:session][:name])
    #raise seller.inspect
    if seller && seller.authenticate(params[:session][:password])

      sign_in seller
      redirect_to root_path, :notice => "Вход успешно выполнен"
    else
      flash.now.alert = "Неправильное Имя или Пароль"
      render "new"
    end
  end
  
  def destroy
    session[:seller_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  #def destroy
  #  sign_out
  #  redirect_to root_url
  #end

end
