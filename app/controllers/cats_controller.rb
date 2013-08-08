class CatsController < ApplicationController

  def index
    @all_cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    cat = Cat.create!(params[:cat])
    redirect_to cat_url cat
  end

  def edit
    @cat = Cat.find(params[:id])
  end

end
