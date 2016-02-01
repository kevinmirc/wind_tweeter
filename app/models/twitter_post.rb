class TwitterPost < ActiveRecord::Base
  def tweet(string)
    client = set_client
    if string != nil && string.length < 140
      client.update(string)
    else
      "tweet not posted: string != nil && string.lenght < 140"
    end
  end

  def tweet_current_conditions(s, g, d)
    client = set_client
    sentence_options = ["Here's an update on the current wind conditions: speed:", "Current conditions:", "Here's what the wind looks like right now:", "Update:"]
    tweet = "#{sentence_options[rand(sentence_options.length)]} speed: #{s}, gust: #{g}, dir: #{d}" 
    client.update(tweet)
    tweet
  end

  private

  def set_client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['tw_key']
      config.consumer_secret     = ENV['tw_secret']
      config.access_token        = ENV['tw_access_token']
      config.access_token_secret = ENV['tw_token_secret']
    end
    client
  end
end
