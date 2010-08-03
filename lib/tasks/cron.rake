
namespace :lotto do

  # Lotto Wednesday Draw => Every Wednesday at 1400 UTC
  desc "Lotto wednesday"
  task(:lotto_wednesday => :environment) do
    send_scheduled_email(2) do |subscription, user|
      UserMailer.deliver_lotto_wednesday_subscription(user.email, subscription.subject, Lotto.lotto_numbers)
    end
  end

  # Euro Millions Draw => Every Friday at 1400 UTC
  desc "Euro millions"
  task(:euro_millions => :environment) do
    send_scheduled_email(3) do |subscription, user|
      UserMailer.deliver_euro_subscription(user.email, subscription.subject, Lotto.euro_numbers, Lotto.euro_stars)
    end
  end


  #Lotto Saturday Draw => Every Saturday at 1400 UTC
  desc "Lotto saturday"
  task(:lotto_saturday => :environment) do
    send_scheduled_email(4) do |subscription, user|
      UserMailer.deliver_lotto_saturday_subscription(user.email, subscription.subject, Lotto.lotto_numbers)
    end
  end


  # Thunderball Saturday Draw => Every Saturday at 1405 UTC
  desc "Thunderball Saturday"
  task(:thunderball_saturday => :environment) do
    send_scheduled_email(5) do |subscription, user|
      UserMailer.deliver_thunder_saturday_subscription(user.email, subscription.subject, Lotto.thunder_main, Lotto.thunderball)
    end
  end

  # Thunderball Wednesday Draw => Every Wednesday at 1405 UTC
  desc "Thunderball Wednesday"
  task(:thunderball_wednesday => :environment) do
    send_scheduled_email(6) do |subscription, user|
      UserMailer.deliver_thunder_wednesday_subscription(user.email, subscription.subject, Lotto.thunder_main, Lotto.thunderball)
    end
  end

  #Powerball USA Wednesday => Every Wednesday at 1900 UTC
  desc "Powerball Wednesday"
  task(:powerball_wednesday => :environment) do
    send_scheduled_email(7) do |subscription, user|
      UserMailer.deliver_powerball_wednesday_subscription(user.email, subscription.subject, Lotto.powerball_main, Lotto.powerball)
    end
  end



  #Powerball USA Saturday => Every Saturday at 1900 UTC
  desc "Powerball Saturday"
  task(:powerball_saturday => :environment) do
    send_scheduled_email(8) do |subscription, user|
      UserMailer.deliver_powerball_wednesday_subscription(user.email, subscription.subject, Lotto.powerball_main, Lotto.powerball)
    end
  end


  # Canada 649 Wednesday => Every Wednesday at 1905 UTC
  desc "Canada649 Wednesday"
  task(:canada_wednesday => :environment) do
    send_scheduled_email(9) do |subscription, user|
      UserMailer.deliver_canada649_wednesday_subscription(user.email, subscription.subject, Lotto.canada_649)
    end
  end
  
  # Canada 649 Saturday => Every Saturday at 1910 UTC
  desc "Canada649 Saturday"
  task(:canada_saturday => :environment) do
    send_scheduled_email(10) do |subscription, user|
      UserMailer.deliver_canada649_saturday_subscription(user.email, subscription.subject, Lotto.canada_649)
    end
  end
  
  # USA Mega Millions Tuesday => Every Tuesday at 1900 UTC
  desc "Mega Millions Tuesday"
  task(:mega_millions_tuesday => :environment) do
    send_scheduled_email(11) do |subscription, user|
      UserMailer.deliver_usamega_tuesday_subscription(user.email, subscription.subject, Lotto.usa_mega, Lotto.megaball)
    end
  end
  
  # USA Mega Millions Friday => Every Friday at 1915 UTC
  desc "Mega Millions Friday"
  task(:mega_millions_friday => :environment) do
    send_scheduled_email(12) do |subscription, user|
      UserMailer.deliver_usamega_friday_subscription(user.email, subscription.subject, Lotto.usa_mega, Lotto.megaball)
    end
  end
  
  # New York Lottery Wednesday => Every Wednesday at 1920 UTC
  desc "New York Wednesday"
  task(:new_york_wednesday => :environment) do
    send_scheduled_email(13) do |subscription, user|
      UserMailer.deliver_newyork_wednesday_subscription(user.email, subscription.subject, Lotto.new_york)
    end
  end
  
  
  # New York Lottery Saturday => Every Saturday at 1920 UTC
  desc "New York Saturday"
  task(:new_york_saturday => :environment) do
    send_scheduled_email(14) do |subscription, user|
      UserMailer.deliver_newyork_saturday_subscription(user.email, subscription.subject, Lotto.new_york)
    end
  end
  

  # Irish Lottery Wednesday => Every Wednesday at 1415 UTC
  desc "Irish Wednesday"
  task(:irish_wednesday => :environment) do
    send_scheduled_email(15) do |subscription, user|
      UserMailer.deliver_irish_wednesday_subscription(user.email, subscription.subject, Lotto.irish)
    end
  end
  
  

  # Irish Lottery Saturday => Every Saturday at 1430 UTC
  desc "Irish Saturday"
  task(:irish_saturday => :environment) do
    send_scheduled_email(16) do |subscription, user|
      UserMailer.deliver_irish_saturday_subscription(user.email, subscription.subject, Lotto.irish)
    end
  end
  
end



def send_scheduled_email(subscription_id, &block)
  subscription = Subscription.find(subscription_id)
  subscription.users.each do |user|
    begin
      yield(subscription, user)
    rescue StandardError => msg
      puts msg.to_s
    end
  end
  subscription.update_attribute(:delivered_at, Time.now)
end
