class RemoveScheduleDeliveryDateTime < ActiveRecord::Migration
  def self.up
    change_column :subscriptions, :schedule_delivery, :string
  end

  def self.down
    change_column :subscriptions, :schedule_delivery, :datetime
  end
end
