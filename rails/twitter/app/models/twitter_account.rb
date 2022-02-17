class TwitterAccount < ApplicationRecord
  belongs_to :user
  has_many :tweets, dependent: :destroy
  def client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.dig(:twitter, :api_key)
      config.consumer_secret     = Rails.application.credentials.dig(:twitter, :api_secret)
      config.access_token        = "1492082485265854464-EPlIAOY4SxdCrXQs3TgX4x9LcwLShJ"
      config.access_token_secret = "6xIBJn90jguRI7NIcaQwgzJjpbrgm98yEXSWhq1NDZUKu"
    end
  end  
end
