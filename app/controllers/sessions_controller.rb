class SessionsController < ApplicationController
  skip_before_action :authenticate!
  def new
  end

  def create
    user = User.authenticate!(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have been logged in!"
    else
      flash[:error] = "Bad username or password"
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have been logged out"
  end
end
