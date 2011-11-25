class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :phone, :address, :city, :state, :password

  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
                       
  def has_password?(submitted_password)
    @password == (submitted_password)
  end
    def self.authenticate(email, password)
      if user = User.where(:email => email)
        if password == (password)
          return user
        end
      end
      return nil
   end
end