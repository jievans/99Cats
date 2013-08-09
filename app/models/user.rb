class User < ActiveRecord::Base
  attr_accessible :password, :token, :username

  # before_save :generate_token

  before_validation do
    generate_token
  end

  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :token,  :presence => true

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
