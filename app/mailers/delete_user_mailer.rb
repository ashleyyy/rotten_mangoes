class DeleteUserMailer < ActionMailer::Base
  default from: "ashley@rottenmangoes.com"

  def deleted_notification(user)
    @user = user
    @url = 'rottenmangoes.com'
    mail(to: @user.email, subject: 'Your account has been deleted')
  end
end
