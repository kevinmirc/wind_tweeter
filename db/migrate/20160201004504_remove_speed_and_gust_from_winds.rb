class RemoveSpeedAndGustFromWinds < ActiveRecord::Migration
  def change
    remove_column :winds, :speed, :integer
    remove_column :winds, :gust, :integer
  end
end
