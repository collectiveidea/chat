class SessionsController < ApplicationController
  def new
    if Rails.env.development?
      log_in User.first
    else
      redirect_to "/auth/twitter"
    end
  end

  def create
    if params[:success]
      log_in User.from_omniauth!(request.env["omniauth.auth"])
    else
      redirect_to root_path, :alert => "You could not be logged in!"
    end
  end

  def destroy
    cookies.delete(:token)
    redirect_to root_path, :notice => "Logged out!"
  end

  private
    def log_in(user)
      cookies.permanent[:token] = user.token
      redirect_to root_path, :notice => "Logged in!"
    end
end
