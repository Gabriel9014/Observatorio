class JoinJuegoHashtag < ActiveRecord::Migration
  def change
  	create_join_table :juegos, :hashtags
  end
end
