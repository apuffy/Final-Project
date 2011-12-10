class PagesController < ApplicationController
  def addcontact
   @title = "Add Contact"
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  def message
    @title = "Messages"
  end

  def profile
    @title = "My Profile"
    @user = User.find(cookies[:remember_token])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def search
    @title = "Search"
    @contacts = Contact.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

end
