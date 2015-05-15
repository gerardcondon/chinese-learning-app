class Subscription < ActiveRecord::Base
	validates :name, :email, presence: true
  
  after_create :send_welcome_email_to_user
  
  def send_welcome_email_to_user
    SubscriptionMailer.welcome_email(self).deliver_later
  end
end
