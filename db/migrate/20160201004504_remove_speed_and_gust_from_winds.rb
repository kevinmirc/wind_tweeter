class RemoveSpeedAndGustFromWinds < ActiveRecord::Migration
  def change
    remove_column :winds, :speed, :decimal
    remove_column :winds, :gust, :decimal
  end
end
