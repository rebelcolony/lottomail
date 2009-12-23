require 'spec_helper'

describe SubscriptionsUsers do
  before(:each) do
    @valid_attributes = {
      :subscription_id => 1,
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    SubscriptionsUsers.create!(@valid_attributes)
  end
end
