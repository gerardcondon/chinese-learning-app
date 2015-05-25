class Subscription < ActiveRecord::Base
	validates :name, :email, presence: true
  
  after_create :send_welcome_email_to_user
  after_create :send_new_subscriber_email_to_admin
  
  mailkick_user
  
  def send_welcome_email_to_user
    SubscriptionMailer.welcome_email(self).deliver_later
  end
  
  def send_new_subscriber_email_to_admin
    SubscriptionAdminMailer.new_subscriber_email(self).deliver_later
  end
end
