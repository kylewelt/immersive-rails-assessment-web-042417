class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You've successfully logged in!"
      redirect_to root_path
    else
      flash[:error] = "That's not the right login information!"
      redirect_to root_path
    end
  end

  def destroy
  end

end
