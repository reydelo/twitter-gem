class TweetFetcher


  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.consumer_key
      config.consumer_secret     = Rails.application.secrets.consumer_secret
      config.access_token        = Rails.application.secrets.access_token
      config.access_token_secret = Rails.application.secrets.access_token_secret
    end
  end

  def find_tweets(twitter_handle)
    @client.user_timeline(twitter_handle)
  end

  def self_tweets
    @client.user_timeline
  end

  def self_feed
    @client.home_timeline
  end

  def self_talk
    @client.mentions_timeline
  end

  def follow(twitter_user)
    @client.follow(twitter_user)
  end

  def make_tweet(tweet_body)
    @client.update(tweet_body)
  end

  def friends
    @client.friends
  end

  def followers(user_followers)
    @client.followers(user_followers)
  end

end
