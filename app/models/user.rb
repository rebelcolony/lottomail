class User < ActiveRecord::Base
  has_and_belongs_to_many :subscriptions
  validates_presence_of :name, :email
  validates_email_format_of :email
end
