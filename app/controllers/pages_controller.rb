class PagesController < ApplicationController
  def addcontact
   @title = "Add Contact"
  end

  def messages
    @title = "Messenger"
  end

  def profile
    @title = "My Profile"
  end

  def search
    @title = "Search"
  end

end
