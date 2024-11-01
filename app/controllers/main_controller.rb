class MainController < ApplicationController
  def index
    flash[:notice] = "Loged in Successfuly"
    flash[:alert] = "Invalid email or password"

  end
end
