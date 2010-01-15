config.cache_classes = true

config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true


config.action_mailer.default_charset = "utf-8"
config.action_mailer.perform_deliveries = true 
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