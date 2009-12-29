class AddDeliveredAtToSubscription < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :delivered_at, :datetime
  end

  def self.down
    remove_column :subscriptions, :delivered_at
  end
end
