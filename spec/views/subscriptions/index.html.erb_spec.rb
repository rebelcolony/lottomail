require 'spec_helper'

describe "/subscriptions/index.html.erb" do
  include SubscriptionsHelper

  before(:each) do
    assigns[:subscriptions] = [
      stub_model(Subscription,
        :name => "value for name"
      ),
      stub_model(Subscription,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of subscriptions" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
