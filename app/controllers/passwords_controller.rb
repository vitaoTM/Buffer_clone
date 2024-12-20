class PasswordsController < ApplicationController
  before_action :require_user_loged_in!

  def edit

  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path
      flash[:notice] = "Password Updated!"
    else
      render :edit, alert: "Password must match"
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
