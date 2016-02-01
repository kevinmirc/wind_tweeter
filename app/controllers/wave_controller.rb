class WaveController < ApplicationController
  include HTTParty
  def index
    @wind = Wind.new.set_data
  end
end
