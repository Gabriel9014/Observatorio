class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos, {:id => false} do |t|
  	t.integer :id_juego
  t.string :nombre_juego
end
execute "ALTER TABLE juegos ADD PRIMARY KEY (id_juego);"
  end
end
