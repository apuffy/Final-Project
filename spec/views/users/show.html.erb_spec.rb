require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :phone => 1,
      :address => "Address",
      :city => "City",
      :state => "State",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
  end
end
