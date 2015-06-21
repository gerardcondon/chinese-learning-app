class SubscriptionMailer < ApplicationMailer
  def welcome_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: "Welcome to Hanzi!")
  end
end
