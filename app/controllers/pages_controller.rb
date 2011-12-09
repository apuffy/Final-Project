class PagesController < ApplicationController
  def addcontact
   @title = "Add Contact"
   @user = User.new
   respond_to do |format|
   format.html # new.html.erb
   format.json { render json: @user }
   end
  end

  def message
    @title = "Messages"
  end

  def profile
    @title = "My Profile"
    @user = User.find_by_id(cookies[:remember_token])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def search
    @title = "Search"
  end

end
