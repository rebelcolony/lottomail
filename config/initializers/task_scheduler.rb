 require 'rubygems'
 require 'rufus/scheduler'
 require 'user_mailer'
 
 scheduler = Rufus::Scheduler.start_new   
 
#Lotto Saturday Draw => Every Saturday at 0600 UTC
 scheduler.cron('33 21 * * mon') do  
  @subscription = Subscription.find(1)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @lotto_numbers = (1..49).to_a.sort{rand() - 0.5 } [0..5]
      @recipients = user.email
      UserMailer.deliver_lotto_saturday_subscription(@recipients, @subject, @lotto_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Lotto Wednesday Draw => Every Wednesday at 0600 UTC
 scheduler.cron('0 6 * * wed') do  
  @subscription = Subscription.find(2)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @lotto_numbers = (1..49).to_a.sort{rand() - 0.5 } [0..5]
      @recipients = user.email
      UserMailer.deliver_lotto_wednesday_subscription(@recipients, @subject, @lotto_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Euro Millions Draw => Every Friday at 0600 UTC
 scheduler.cron('0 6 * * fri') do  
  @subscription = Subscription.find(3)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @euro_numbers = (1..50).to_a.sort{ rand() - 0.5 }[0..4]
      @euro_stars = (1..9).to_a.sort{ rand() - 0.5 }[0..1]
      @recipients = user.email
      UserMailer.deliver_euro_subscription(@recipients, @subject, @euro_numbers, @euro_stars)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Thunderball Saturday Draw => Every Saturday at 0605 UTC
 scheduler.cron('5 6 * * sat') do  
  @subscription = Subscription.find(4)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @thunder_main_numbers = (1..34).to_a.sort{ rand() - 0.5 }[0..4]
      @thunderball = rand(14) + 1
      @recipients = user.email
      UserMailer.deliver_thunder_saturday_subscription(@recipients, @subject, @thunder_main_numbers, @thunderball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Thunderball Wednesday Draw => Every Wednesday at 0610 UTC
 scheduler.cron('29 23 * * thu') do  
  @subscription = Subscription.find(5)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @thunder_main_numbers = (1..34).to_a.sort{ rand() - 0.5 }[0..4]
      @thunderball = rand(14) + 1
      @recipients = user.email
      UserMailer.deliver_thunder_wednesday_subscription(@recipients, @subject, @thunder_main_numbers, @thunderball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Powerball USA Wednesday => Every Wednesday at 1600 UTC
 scheduler.cron('0 16 * * wed') do  
  @subscription = Subscription.find(6)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @powerball_main_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..4]
      @powerball =  rand(39) + 1
      @recipients = user.email
      UserMailer.deliver_powerball_wednesday_subscription(@recipients, @subject, @powerball_main_numbers, @powerball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Powerball USA Saturday => Every Saturday at 1600 UTC
 scheduler.cron('0 16 * * sat') do  
  @subscription = Subscription.find(7)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @powerball_main_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..4]
      @powerball =  rand(39) + 1
      @recipients = user.email
      UserMailer.deliver_powerball_saturday_subscription(@recipients, @subject, @powerball_main_numbers, @powerball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Canada 649 Wednesday => Every Wednesday at 1605 UTC
 scheduler.cron('5 16 * * wed') do  
  @subscription = Subscription.find(8)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @canada649_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_canada649_wednesday_subscription(@recipients, @subject, @canada649_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Canada 649 Saturday => Every Saturday at 1605 UTC
 scheduler.cron('5 16 * * sat') do  
  @subscription = Subscription.find(9)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @canada649_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_canada649_saturday_subscription(@recipients, @subject, @canada649_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#USA Mega Millions Tuesday => Every Tuesday at 1610 UTC
 scheduler.cron('0 16 * * tue') do  
  @subscription = Subscription.find(10)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @usamega_numbers =  (1..56).to_a.sort{ rand() - 0.5 }[0..4]
      @megaball =  rand(46) + 1
      @recipients = user.email
      UserMailer.deliver_usamega_tuesday_subscription(@recipients, @subject, @usamega_numbers, @megaball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#USA Mega Millions Friday => Every Friday at 1600 UTC
 scheduler.cron('0 16 * * fri') do  
  @subscription = Subscription.find(11)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @usamega_numbers =  (1..56).to_a.sort{ rand() - 0.5 }[0..4]
      @megaball =  rand(46) + 1
      @recipients = user.email
      UserMailer.deliver_usamega_friday_subscription(@recipients, @subject, @usamega_numbers, @megaball)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#New York Lottery Wednesday => Every Wednesday at 1610 UTC
 scheduler.cron('10 16 * * wed') do  
  @subscription = Subscription.find(12)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @newyork_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_newyork_wednesday_subscription(@recipients, @subject, @newyork_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#New York Lottery Saturday => Every Saturday at 1615 UTC
 scheduler.cron('15 16 * * sat') do  
  @subscription = Subscription.find(13)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @newyork_numbers =  (1..59).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_newyork_saturday_subscription(@recipients, @subject, @newyork_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Irish Lottery Wednesday => Every Wednesday at 0615 UTC
 scheduler.cron('15 6 * * wed') do  
  @subscription = Subscription.find(14)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @irish_numbers =  (1..45).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_irish_wednesday_subscription(@recipients, @subject, @irish_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

#Irish Lottery Saturday => Every Saturday at 0615 UTC
 scheduler.cron('49 2 * * sun') do  
  @subscription = Subscription.find(16)
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @irish_numbers =  (1..45).to_a.sort{ rand() - 0.5 }[0..5]
      @recipients = user.email
      UserMailer.deliver_irish_saturday_subscription(@recipients, @subject, @irish_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

