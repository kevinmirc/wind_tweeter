class AddDataToWinds < ActiveRecord::Migration
  def change
    add_column :winds, :data, :string
  end
end
