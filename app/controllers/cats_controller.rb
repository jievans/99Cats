class CatsController < ApplicationController

  def index
    @all_cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    @undecided = @cat.cat_rental_requests
                     .where("status = 'undecided'")
                     .order(:begin_date)
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

  def update
    cat = Cat.find(params[:id])
    cat.update_attributes!(params[:cat])
    redirect_to cat_url(cat)
  end

end
