class SessionsController < ApplicationController
  def login
    @title = "Sign In"
  end
  
  def create
    render 'new'
  end

end
