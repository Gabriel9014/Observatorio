class JoinTweetConsola < ActiveRecord::Migration
  def change
  	create_join_table :tweets, :consolas
  end
end
