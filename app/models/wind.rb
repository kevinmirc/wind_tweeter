class Wind < ActiveRecord::Base
  include HTTParty
  def set_data
    past_time = "#{(Time.now - 2000).to_s.split(' ')[1].slice(0..4)}"
    time_now = "#{Time.now.to_s.split(' ')[1].slice(0..4)}"
    today = "#{Time.new.to_s.gsub("-", "").split(' ').first}"
    begin_date = "#{today} #{past_time}" #Time.new.to_s.gsub("-", "").split(' ').first + " " + some time
    end_date = "#{today} #{time_now}"
    station = "8726520"
    # Lake Worth Pier station (Boca Raton): 8722670 
    # St. Petersburg station: 8726520
    product = "Wind"
    time_zone = "lst_ldt"
    #st pete 
    url = "http://tidesandcurrents.noaa.gov/api/datagetter?begin_date=#{begin_date}&end_date=#{end_date}&station=#{station}&product=#{product}&&units=english&time_zone=#{time_zone}&time_zone=gmt&format=json"

    data = JSON.parse(HTTParty.get(url))
    self.data = data
    self.speed = data['data'].last['s'].to_f
    self.gust = data['data'].last['g'].to_f
    self.direction = data['data'].last['dr']
    self
  end
end
