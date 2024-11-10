class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #send email
    end
    redirect_to root_path, notice: "If an account with that email was found, an email was sent for recovery"
  end
end
