class CatRentalRequestsController < ApplicationController
  def new
    @all_cats = Cat.all
  end

  def create
    CatRentalRequest.create!(params[:cr])
    cat = Cat.find(params[:cr][:cat_id])
    redirect_to cat_url(cat)
  end

  def update
    request = CatRentalRequest.find(params[:id])
    request.update_attributes!(:status => params[:cr][:status])
    cat = Cat.find(request.cat_id)
    redirect_to cat_url(cat)
  end

end
