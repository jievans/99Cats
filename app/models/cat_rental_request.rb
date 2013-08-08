class CatRentalRequest < ActiveRecord::Base
  attr_accessible :begin_date, :cat_id, :end_date, :status

  belongs_to :cat, :class_name  => "Cat", :foreign_key => :cat_id,
             :primary_key => :id

  after_destroy :log_destroy_action

  validate :available?

  def available?
    unavailable = self.class.where("begin_date <= ? AND end_date >= ? AND status = 'approved' AND cat_id = ?", self.end_date, self.begin_date, self.cat_id)
    errors[:date_range] << "not available" unless unavailable.empty?
  end

  def log_destroy_action
    puts "Cat Rental Request #{self.id} destroyed"
  end

  def approve
    self.status = avaliable? ? "approved" : "denied"
  end

end
