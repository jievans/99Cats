class User < ActiveRecord::Base
  attr_accessible :password, :token, :username

  before_save :generate_token


  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
