class Subscription < ActiveRecord::Base
  has_and_belongs_to_many :users
def deliver(recipients, subscription, user, subject, lotto_numbers)
  UserMailer.deliver_lotto_saturday_subscription(recipients, subscription, user, subject, lotto_numbers)
  update_attribute(:schedule_delivery, Time.now)
end

end
