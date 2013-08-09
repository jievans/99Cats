class Cat < ActiveRecord::Base
  attr_accessible :age, :birth_date, :color, :name, :sex, :user_id

  has_many :cat_rental_requests, :class_name => "CatRentalRequest",
           :foreign_key => :cat_id, :primary_key => :id,
           :dependent => :destroy

  belongs_to :user, :class_name => "User",
            :foreign_key => :user_id,
            :primary_key => :id

end
