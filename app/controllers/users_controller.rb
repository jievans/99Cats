class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.create!(params[:user])
    redirect_to(cats_url)
  end

end
