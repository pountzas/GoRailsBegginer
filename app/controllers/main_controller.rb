class MainController < ApplicationController
  def index
    flash[:notice] = "Logged in succesfully"
    flash[:alert] = "wrong email or pass"
  end
end
