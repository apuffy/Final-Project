require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET 'login'" do

    it "should be successful" do
      get :login
      response.should be_success
    end

    it "should have the right title" do
      get :login
      response.should have_selector("title", :content => "Sign In")
    end
  end
end

