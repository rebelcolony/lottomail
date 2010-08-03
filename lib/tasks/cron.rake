namespace :cron do
  namespace :lotto do

    # Lotto Wednesday Draw => Every Wednesday at 1400 UTC
    task(:lotto_wednesday => :environment) do
      send_scheduled_email(2) do |subscription, user|
        UserMailer.deliver_lotto_wednesday_subscription(user.email, subscription.subject, Lotto.lotto_wednesday_numbers)
      end
    end

    # Euro Millions Draw => Every Friday at 1400 UTC
    task(:euro_millions => :environment) do
      send_scheduled_email(3) do |subscription, user|
        UserMailer.deliver_euro_subscription(user.email, subscription.subject, Lotto.euro_numbers, Lotto.euro_stars)
      end
    end



  end
end


def send_scheduled_email(subscription_id, &block)
  subscription = Subscription.find(subscription_id)
  subscription.users.each do |user|
    begin
      yield(subscription, user)
    rescue
      # do nothing
      raise
    end
  end
  subscription.update_attribute(:delivered_at, Time.now)
end
