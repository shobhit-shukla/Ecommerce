class UserMailer < ActionMailer::Base
  default from: "testlinkites1@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @consumer = user
    mail :to => user.email, :subject => "Password Reset" 
  end
end
