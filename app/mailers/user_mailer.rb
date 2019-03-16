class UserMailer < ApplicationMailer
	default from: 'notifications@thehubnews.com'

	def welcome_email
  	@user = params[:user]
  	@url  = edit_user_password_url
  	mail(to: @user.email, subject: 'Welcome to The Hub News')
	end
end
