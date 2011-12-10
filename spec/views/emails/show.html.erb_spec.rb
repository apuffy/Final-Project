require 'spec_helper'

describe "emails/show.html.erb" do
  before(:each) do
    @email = assign(:email, stub_model(Email,
      :to => "To",
      :from => "From",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
