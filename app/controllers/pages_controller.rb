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
    @emails = Email.where(:to => cookies[:remember_email])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emails }
    end
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
    @contacts = Contact.where(:user_id =>  cookies[:remember_token])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end
  
  

end
