class SessionsController < ApplicationController

  skip_before_filter :logged_in?

  def new
    render :new
  end

  def create
    user = User.find_by_username(params[:session][:username])
    if authenticated?
      session[:session_token] = user.token
      redirect_to cats_url
    else
      redirect_to new_session_url
    end
  end

  def authenticated?
    user = User.find_by_username(params[:session][:username])
    user.password == params[:session][:password]
  end

end
