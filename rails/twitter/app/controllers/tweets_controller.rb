class TweetsController < ApplicationController
	def index
		@tweets = Current.user.tweets
	end	
	def new
		@tweet = Tweet.new
	end	
	def create
		@tweet = Current.user.tweets.create(tweet_params)
		if @tweet.save
			redirect_to tweets_path, notice: "Tweet was published"
		else	
			render :new
		end	
	end	

	private

	def tweet_params
		params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
	end	
end	