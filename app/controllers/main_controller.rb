class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    # flash[:notice] = "Loged in Successfuly"
    # flash[:alert] = "Invalid email or password"
    end
  end
end
