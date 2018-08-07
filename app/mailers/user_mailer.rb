class UserMailer < ApplicationMailer
  def new_user(user)
    @user = user
    mail to: "test@example.com"
  end
end
