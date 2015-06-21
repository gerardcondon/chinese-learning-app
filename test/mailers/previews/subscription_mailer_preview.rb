# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview
    def welcome_email
        subscription = Subscription.new
        subscription.name = "Bob"
        subscription.email = "bob@example.com"
        SubscriptionMailer.welcome_email subscription
    end
end
