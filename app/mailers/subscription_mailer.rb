class SubscriptionMailer < ApplicationMailer
  default from: "chinese-learning-app@gerardcondon.com"
  
  def welcome_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: "Welcome to Hanzi!")
  end
end
