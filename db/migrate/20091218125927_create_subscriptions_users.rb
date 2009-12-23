class CreateSubscriptionsUsers < ActiveRecord::Migration
  def self.up
    create_table :subscriptions_users do |t|
      t.integer :subscription_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions_users
  end
end
