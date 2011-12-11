class Contact < ActiveRecord::Base

  attr_accessible :name, :email, :phone, :address, :city, :state,:user_id
  
  validates :name, :presence => true, :length => {:within => 3..40}
  validates_format_of :email, :presence => true, 
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates :address, :presence => true, :length => {:within => 1..40}
  validates :city, :presence => true, :length => {:within => 1..40}
  validates :state, :presence => true, :length => {:within => 1..40}
  validates :phone, :presence => true, :length => {:within => 10..10}
  
end
