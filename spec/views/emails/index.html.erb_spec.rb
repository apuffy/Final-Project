require 'spec_helper'

describe "emails/index.html.erb" do
  before(:each) do
    assign(:emails, [
      stub_model(Email,
        :to => "To",
        :from => "From",
        :content => "Content"
      ),
      stub_model(Email,
        :to => "To",
        :from => "From",
        :content => "Content"
      )
    ])
  end

  it "renders a list of emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
