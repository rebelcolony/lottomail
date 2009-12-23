require 'spec_helper'

describe "/subscriptions/edit.html.erb" do
  include SubscriptionsHelper

  before(:each) do
    assigns[:subscription] = @subscription = stub_model(Subscription,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit subscription form" do
    render

    response.should have_tag("form[action=#{subscription_path(@subscription)}][method=post]") do
      with_tag('input#subscription_name[name=?]', "subscription[name]")
    end
  end
end
