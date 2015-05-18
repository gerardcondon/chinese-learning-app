class SubscriptionAdminMailer < ApplicationMailer
  
  def new_subscriber_email(subscriber)
    @subscriber = subscriber
    mail(to: Rails.application.secrets.admin_email, subject: "A new subscriber for Hanzi!")
  end
end
