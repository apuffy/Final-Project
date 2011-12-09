class PagesController < ApplicationController
  def addcontact
   @title = "Add Contact"
  end

  def message
    @title = "Messages"
  end

  def profile
    @title = "My Profile"
    @user = User.where(:id => cookies[:remember_token])
  end

  def search
    @title = "Search"
  end

end
