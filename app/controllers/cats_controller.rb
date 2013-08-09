class CatsController < ApplicationController

  def index
    @all_cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    @owner = current_user.id == @cat.id
    @undecided = @cat.cat_rental_requests
                     .where("status = 'undecided'")
                     .order(:begin_date)
    render :show
  end

  def new
    render :new
  end

  def create
    params[:cat][:user_id] = current_user.id
    cat = Cat.create!(params[:cat])
    puts cat_url(cat)
    redirect_to cat_url(cat)
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    cat = Cat.find(params[:id])
    if cat.user_id == current_user.id
      cat.update_attributes!(params[:cat])
    else
      flash[:errors] = "You can't edit a cat you don't own!"
    end
    redirect_to cat_url(cat)
  end

end
