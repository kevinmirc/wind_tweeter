class WaveController < ApplicationController
  include HTTParty
  def index
    @wind = Wind.new.set_data
  end

  def tweet_conditions
    wind = Wind.new.set_data
    t = TwitterPost.new
    @tweet = t.tweet_current_conditions(wind.speed, wind.gust, wind.direction)
  end
end
