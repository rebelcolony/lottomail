require 'spec_helper'

describe "/subscriptions/show.html.erb" do
  include SubscriptionsHelper
  before(:each) do
    assigns[:subscription] = @subscription = stub_model(Subscription,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
