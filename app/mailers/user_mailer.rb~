class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @consumer = user
    mail :to => "shobhit.shukla52@gmail.com", :subject => "Password Reset" 
  end
end
