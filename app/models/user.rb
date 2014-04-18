class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  
  before_save{|user| user.email = user.email.downcase}

  validates :name, presence: true, length: { maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  vaildates :email, presence: true, format: {with: VALID_EMAIL_REGEX},
  uniqueness: {case_sensative:false}
  vaildates :password, presence: true, length: {minimum:5}
  vaildates :password_confirmation, presence: true
end