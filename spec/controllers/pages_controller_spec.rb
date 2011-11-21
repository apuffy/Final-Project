require 'spec_helper'

describe PagesController do

  describe "GET 'addcontact'" do
    it "returns http success" do
      get 'addcontact'
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Add Contact")
    end
  end

  describe "GET 'profile'" do
    it "returns http success" do
      get 'profile'
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "My Profile")
    end
  end

  describe "GET 'search'" do
    it "returns http success" do
      get 'search'
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Search")
    end
  end

  describe "GET 'message'" do
    it "returns http success" do
      get 'message'
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Messages")
    end
  end

end
