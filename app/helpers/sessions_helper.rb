module SessionsHelper
  
  def sign_in(user)
    cookies[:remember_token] = user.id
    cookies[:remember_email] = user.email
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    cookies.delete(:remember_token)
    cookies.delete(:remember_email)
    self.current_user = nil
  end
 
end
