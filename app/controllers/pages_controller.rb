class PagesController < ApplicationController
  def addcontact
   @title = "Add Contact"
  end

  def message
    @title = "Message"
  end

  def profile
    @title = "My Profile"
  end

  def search
    @title = "Search"
  end

end
