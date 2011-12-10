require 'spec_helper'

describe Contact do
  before (:each) do
    @attr = {:name => "John Doe", :email => "jdoe@example.com"}
  end
  
  it "should create a new instance given valid attributes" do
    Contact.create!(@attr)
  end
  
  it "should require a name" do
    no_name_Contact = Contact.new(@attr.merge(:name => ""))
    no_name_Contact.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a"*51
    long_name_Contact = Contact.new(@attr.merge(:name => long_name))
    long_name_Contact.should_not be_valid
  end
  
  it "should require an email" do
    no_email_Contact = Contact.new(@attr.merge(:email => ""))
    no_email_Contact.should_not be_valid
  end
  
  it "should reject email addresses that are invalid" do
    invalid_addresses = %w[user@foo,com user_at_foo.org example@foo. @foo.com]
    invalid_addresses.each do |address|
      invalid_email_Contact = Contact.new(@attr.merge(:email => address))
      invalid_email_Contact.should_not be_valid
    end
  end
  
  it "should accept email addresses that are valid" do
    valid_addresses = %w[user@foo.com user@foo.blech.org example.user@foo.com]
    valid_addresses.each do |address|
      valid_email_Contact = Contact.new(@attr.merge(:email => address))
      valid_email_Contact.should be_valid
    end
  end
  
  it "should reject duplicate email addresses" do
    Contact1 = Contact.create!(@attr)
    Contact1.should be_valid
    Contact2 = Contact.new(@attr)
    upperCaseEmail = @attr[:email].upcase
    Contact3 = Contact.new(@attr.merge(:email => upperCaseEmail))
  end
end

