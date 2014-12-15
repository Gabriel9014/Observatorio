class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags, {:id => false} do |t|
  t.integer :id_hashtag
  t.string :nombre_juego
end
execute "ALTER TABLE hashtags ADD PRIMARY KEY (id_hashtag);"
  end
end
