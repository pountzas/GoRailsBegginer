class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # render plain: params[:user]
    # render plain: 'ok'
    # @user = User.new(params[:user]) # not safe
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'welldone U managed to LOG'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
