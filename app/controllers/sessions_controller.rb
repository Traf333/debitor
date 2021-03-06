class SessionsController < ApplicationController
  before_filter :signed_in_seller, except: [:new, :create]
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
    #session[:seller_id] = nil
    sign_out
    redirect_to signin_path, :notice => "Выход успешно выполнен"
  end

  #def destroy
  #  sign_out
  #  redirect_to root_url
  #end

end
