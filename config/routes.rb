Rails.application.routes.draw do
  root 'tweet_fetcher#index'

  post 'tweet_fetcher' => 'tweet_fetcher#index'
end
