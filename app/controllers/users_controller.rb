class UsersController < ApplicationController
  skip_before_filter :logged_in?

  def new
    render :new
  end

  def create
    user = User.create!(params[:user])
    redirect_to(cats_url)
  end

end
