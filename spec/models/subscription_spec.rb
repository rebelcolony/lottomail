require 'spec_helper'

describe Subscription do
  before(:each) do
    
    @valid_attributes = {
      :name => "value for name",
      :subject => "value",
      :content => "value",
      :schedule_delivery => "value"
    
    }
  end

  it "should create a new instance given valid attributes" do
    Subscription.create!(@valid_attributes)
  end
  
  it "should fail when name is missing" do
    @valid_attributes.delete(:name)
    lambda { @subscription = Subscription.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
  
  it "should fail when subject is missing" do
    @valid_attributes.delete(:subject)
    lambda { @subscription = Subscription.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
  
end
