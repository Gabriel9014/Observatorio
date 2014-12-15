class CreateConsolas < ActiveRecord::Migration
  def change
    create_table :consolas, {:id => false} do |t|
  t.integer :id_consola
  t.string :marca_consola
  t.string :nombre_consola
end
execute "ALTER TABLE consolas ADD PRIMARY KEY (id_consola);"
  end
end
