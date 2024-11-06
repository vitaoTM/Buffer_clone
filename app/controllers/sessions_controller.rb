class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
      flash[:notice] = "Logged in Successfuly! (/￣ー￣)/~~☆’.･.･:★’.･.･:☆"
    else
      flash[:alert] = 'Invalid login (－‸ლ)	'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:notice] =  "Logged out ლ(ಠ_ಠ ლ)"
  end
end
