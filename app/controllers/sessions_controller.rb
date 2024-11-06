class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out ლ(ಠ_ಠ ლ)"
  end
end
