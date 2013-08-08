class Cat < ActiveRecord::Base
  attr_accessible :age, :birth_date, :color, :name, :sex

  has_many :cat_rental_requests, :class_name => "CatRentalRequest",
           :foreign_key => :cat_id, :primary_key => :id,
           :dependent => :destroy

end
