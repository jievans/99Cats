class CatsController < ApplicationController

  def index
    @all_cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

end
