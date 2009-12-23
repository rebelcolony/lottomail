require 'spec_helper'

describe "/subscriptions/new.html.erb" do
  include SubscriptionsHelper

  before(:each) do
    assigns[:subscription] = stub_model(Subscription,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new subscription form" do
    render

    response.should have_tag("form[action=?][method=post]", subscriptions_path) do
      with_tag("input#subscription_name[name=?]", "subscription[name]")
    end
  end
end
