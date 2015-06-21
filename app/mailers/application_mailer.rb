class ApplicationMailer < ActionMailer::Base
  include Roadie::Rails::Automatic
  
  default from: "chinese-learning-app@gerardcondon.com"
end
