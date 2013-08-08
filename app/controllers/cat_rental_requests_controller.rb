class CatRentalRequestsController < ApplicationController
  def new
    @all_cats = Cat.all
  end

  def create
    CatRentalRequest.create!(params[:cr])
    cat = Cat.find(params[:cr][:cat_id])
    redirect_to cat_url(cat)
  end

end
