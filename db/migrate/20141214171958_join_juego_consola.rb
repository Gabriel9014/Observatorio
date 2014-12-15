class JoinJuegoConsola < ActiveRecord::Migration
  def change
  	create_join_table :juegos, :consolas
  end
end
