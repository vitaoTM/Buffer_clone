class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_loged_in!
    if Current.user.nil?
      redirect_to sign_in_path
      flash[:alert] = "You must Sign In to do that!"
    end
  end

end
