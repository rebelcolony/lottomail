class UserMailer < ActionMailer::Base

def lotto_saturday_subscription(to_addresses, subscription, user, subject, lotto_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.net"
  subject      subject
  body         :subscription => subscription, :lotto_numbers => lotto_numbers
end  
end
