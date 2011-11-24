class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password

  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
                       
  def has_password?(submitted_password)
    self.password == (submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end
end