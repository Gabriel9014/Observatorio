class JoinTweetHashtag < ActiveRecord::Migration
  def change
  	create_join_table :tweets, :hashtags
  end
end
