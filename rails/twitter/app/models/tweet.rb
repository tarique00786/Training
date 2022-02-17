class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  def published?
    tweet_id?
  end 

  def publish_to_twitter!
    tweet = twitter_account.client.update(body)
    update(tweet_id: tweet_id)
  end  
end
