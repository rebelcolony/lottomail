desc  "send subscription"
task  :send_subscription => :environment do
  subscription = Subscription.find(ENV["SUBSCRIPTION_ID"])
  subscription.deliver
end