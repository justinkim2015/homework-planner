class HomeworkMailer < ApplicationMailer
  default from: 'homeworkreminder.pls@gmail.com'

  def confirmation_email
    @user = params[:user]
    mail(to: @user.email, subject: "New homework Added!")
  end

  def warning_email
    @user = User.find(params[:user_id])
    mail(to: @user.email, subject: "Order new homework soon!")
  end
end