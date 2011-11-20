require 'spec_helper'

describe PagesController do

  describe "GET 'addcontact'" do
    it "returns http success" do
      get 'addcontact'
      response.should be_success
    end
  end

  describe "GET 'profile'" do
    it "returns http success" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'search'" do
    it "returns http success" do
      get 'search'
      response.should be_success
    end
  end

  describe "GET 'message'" do
    it "returns http success" do
      get 'message'
      response.should be_success
    end
  end

end
