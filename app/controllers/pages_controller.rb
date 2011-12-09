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
    @user = User.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def search
    @title = "Search"
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

end
