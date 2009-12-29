 require 'rubygems'
 require 'rufus/scheduler'
 require 'user_mailer'
 
 scheduler = Rufus::Scheduler.start_new   
 
 scheduler.every("1h") do  
  @subscription = Subscription.first
  @users = @subscription.users
  @subject = @subscription.subject
    for user in @users
      @lotto_numbers = (1..49).to_a.sort{rand() - 0.5 } [0..5]
      @recipients = user.email
      UserMailer.deliver_lotto_saturday_subscription(@recipients, @subject, @lotto_numbers)
      @subscription.update_attribute(:delivered_at, Time.now)
    end
end

