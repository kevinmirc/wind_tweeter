class AddSpeedDirectionAndGustToWind < ActiveRecord::Migration
  def change
    add_column :winds, :speed, :integer
    add_column :winds, :direction, :string
    add_column :winds, :gust, :integer
  end
end
