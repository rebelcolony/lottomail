require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "kevin@hotmail.com"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
  
  it "should fail when name is missing" do
    @valid_attributes.delete(:name)
    lambda { @user = User.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
   
  it "should fail when email is missing" do
    @valid_attributes.delete(:email)
    lambda { @user = User.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
  
  it "should fail when a user has not selected anything" do
  end
  
end
