class AddSpeedAndGustToWinds < ActiveRecord::Migration
  def change
    add_column :winds, :speed, :real
    add_column :winds, :gust, :real
  end
end
