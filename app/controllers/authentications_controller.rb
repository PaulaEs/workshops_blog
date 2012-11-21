class AuthenticationsController < ApplicationController
	def create
	omniauth = request.env["omniauth.auth"]
	user = User.where(:email => omniauth.info.email, 
	:facebook_uid => omniauth.uid).first_or_initialize
	if user.save!
	sign_in :user, user
	redirect_to request.env["omniauth.origin"] || root_url
	end
end
