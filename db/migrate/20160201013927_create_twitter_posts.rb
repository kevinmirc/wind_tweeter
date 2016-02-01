class CreateTwitterPosts < ActiveRecord::Migration
  def change
    create_table :twitter_posts do |t|

      t.timestamps null: false
    end
  end
end
