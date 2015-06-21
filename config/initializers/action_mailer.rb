Rails.application.configure do
  config.action_mailer.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 25,
    :enable_starttls_auto => true,
    :user_name => Rails.application.secrets.mandrill_username,
    :password  => Rails.application.secrets.mandrill_api_key,
    :authentication => 'login',
    :domain => 'gerardcondon.com',
    :openssl_verify_mode => OpenSSL::SSL::VERIFY_NONE
  }
end