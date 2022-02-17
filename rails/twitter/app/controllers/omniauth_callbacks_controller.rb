class OmniauthCallbacksController < ApplicationController

	def twitter
		Rails.logger.info auth
		debugger
		Current.user.twitter_accounts.create(
			name: auth.extra.access_token.params["screen_name"],
			username: auth.info.nickname,
			image: auth.info.image,
			token: auth.credentials.token,
			secret: auth.credentials.secret,
			)
		redirect_to root_path, notice: "You are connected with twitter"
	end	

	def auth
		request.env['omniauth.auth']
	end	
end	