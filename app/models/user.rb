class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :phone, :address, :city, :state,:password
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
            
  validates :name, :presence => true, :length => {:within => 3..40}
  validates_format_of :email, :presence => true, 
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
                       
  def has_password?(submitted_password)
    :password == (submitted_password)
  end
  
  def self.authenticate(email, password) 
    user = find_by_email(email)
   #if(user.password == password)
      return user unless user.nil?
   #end
  end
  
end