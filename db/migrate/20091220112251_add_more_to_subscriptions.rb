class AddMoreToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :subject, :string
    add_column :subscriptions, :content, :text
    add_column :subscriptions, :schedule_delivery, :datetime    
  end

  def self.down
    remove_column :subscriptions, :subject
    remove_column :subscriptions, :content    
    remove_column :subscriptions, :schedule_delivery        
  end
end
