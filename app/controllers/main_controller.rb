class MainController < ApplicationController
  def index
    flash.now[:notice] = "Logged in succesfully"
    flash.now[:alert] = "wrong email or pass"
  end
end
