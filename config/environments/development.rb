config.cache_classes = false

config.whiny_nils = true

config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

config.action_mailer.raise_delivery_errors = true 
config.action_mailer.delivery_method  :smtp
config.action_mailer.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "lottomail.org",
  :authentication => :plain,
  :user_name => "support@lottomail.org",
  :password => "lottosupport"
}