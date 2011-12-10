class User < ActiveRecord::Base
  has_many :contacts
  attr_accessible :name, :email, :phone, :address, :city, :state,:password
  
  validates :password, :presence     => true,
                       :length       => { :within => 5..40 }          
  validates :name, :presence => true, :length => {:within => 3..40}
  validates_format_of :email, :presence => true, 
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates :address, :presence => true, :length => {:within => 1..40}
  validates :city, :presence => true, :length => {:within => 1..40}
  validates :state, :presence => true, :length => {:within => 1..40}
  validates :phone, :presence => true, :length => {:within => 9..10}
                       
  def has_password?(submitted_password)
    password == (submitted_password)
  end
  
  def self.authenticate(email, password) 
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(password)
  end
  
end