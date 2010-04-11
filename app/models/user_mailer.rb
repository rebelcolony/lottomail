class UserMailer < ActionMailer::Base
  
  def registration_confirmation(user)
    recipients   user.email
    from         "no-reply@lottomail.org"
    subject      "Thanks for Registering with Lottomail"
    body         :user => user
    content_type "text/html"
  end

def lotto_saturday_subscription(to_addresses, subject, lotto_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :lotto_numbers => lotto_numbers
  content_type "text/html"
  
end  

def lotto_wednesday_subscription(to_addresses, subject, lotto_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :lotto_numbers => lotto_numbers
  content_type "text/html"
  
end

def euro_subscription(to_addresses, subject, euro_numbers, euro_stars)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :euro_numbers => euro_numbers, :euro_stars => euro_stars
  content_type "text/html"
  
end

def thunder_saturday_subscription(to_addresses, subject, thunder_main_numbers, thunderball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :thunder_main_numbers => thunder_main_numbers, :thunderball => thunderball
  content_type "text/html"
  
end

def thunder_wednesday_subscription(to_addresses, subject, thunder_main_numbers, thunderball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :thunder_main_numbers => thunder_main_numbers, :thunderball => thunderball
  content_type "text/html"
  
end

def powerball_wednesday_subscription(to_addresses, subject, powerball_main_numbers, powerball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :powerball_main_numbers => powerball_main_numbers, :powerball => powerball
  content_type "text/html"
  
end

def powerball_saturday_subscription(to_addresses, subject, powerball_main_numbers, powerball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :powerball_main_numbers => powerball_main_numbers, :powerball => powerball
  content_type "text/html"
  
end

def canada649_wednesday_subscription(to_addresses, subject, canada649_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :canada649_numbers => canada649_numbers
  content_type "text/html"
  
end


def canada649_saturday_subscription(to_addresses, subject, canada649_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :canada649_numbers => canada649_numbers
  content_type "text/html"
  
end


def usamega_tuesday_subscription(to_addresses, subject, usamega_numbers, megaball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :usamega_numbers => usamega_numbers, :megaball => megaball 
  content_type "text/html"
  
end

def usamega_friday_subscription(to_addresses, subject, usamega_numbers, megaball)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :usamega_numbers => usamega_numbers, :megaball => megaball 
  content_type "text/html"
  
end

def newyork_wednesday_subscription(to_addresses, subject, newyork_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :newyork_numbers => newyork_numbers 
  content_type "text/html"
  
end

def newyork_saturday_subscription(to_addresses, subject, newyork_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :newyork_numbers => newyork_numbers 
  content_type "text/html"
  
end

def irish_wednesday_subscription(to_addresses, subject, irish_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :irish_numbers => irish_numbers
  content_type "text/html"
  
end
def irish_saturday_subscription(to_addresses, subject, irish_numbers)
  recipients   to_addresses
  from         "no-reply@lottomail.org"
  subject      subject
  body         :irish_numbers => irish_numbers
  content_type "text/html"
  
end

end
