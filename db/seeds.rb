# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create!(:age => 5, :birth_date => "1999-02-02", :name => "Biscuit", :color => "Calico", :sex => "Female")

CatRentalRequest.create!(:begin_date => "2010-03-14", :cat_id => 1, :end_date => "2010-03-20", :status => "approved")

Cat.create!(:age => 7, :birth_date => "2005-06-12", :name => "James", :color => "Black", :sex => "Male")

CatRentalRequest.create!(:begin_date => "2011-03-14", :cat_id => 2, :end_date => "2011-03-20", :status => "approved")


