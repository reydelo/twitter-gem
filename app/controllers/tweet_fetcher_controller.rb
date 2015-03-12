class TweetFetcherController < ApplicationController

  def index
    @tweet_fetcher = TweetFetcher.new()
    # @self_tweets = TweetFetcher.new().self_tweets
    if params[:twitter_handle]
        @tweets = TweetFetcher.new().find_tweets(params[:twitter_handle])
    end
    if params[:tweet_body]
      @tweet_fetcher.make_tweet(params[:tweet_body])
    end
    if params[:twitter_user]
      @tweet_fetcher.follow(params[:twitter_user])
    end
    if params[:user_followers]
      @tt = TweetFetcher.new().followers(params[:user_followers])
    end
  end

end
