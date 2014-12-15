class JoinConsolaHashtag < ActiveRecord::Migration
  def change
  	create_join_table :consolas, :hashtags
  end
end
