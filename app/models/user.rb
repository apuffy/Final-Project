class User < ActiveRecord::Base
  attr_accessor :email, :password
  attr_accessible :name, :email, :phone, :address, :city, :state, :password

  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
                       
  def has_password?(submitted_password)
    @password == (submitted_password)
  end
  
  def self.authenticate(email, password)
    if user = User.where(:email => "apuffy87@gmail.com")
      if @user.password == "tiburon"
        return user
      end
    end
    return nil
   end
end