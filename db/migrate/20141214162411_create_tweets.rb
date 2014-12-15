class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets, {:id => false} do |t|
  t.integer :id_tweet
  t.date :fecha_publicacion_tweet
  t.text :contenido_tweet
end
execute "ALTER TABLE tweets ADD PRIMARY KEY (id_tweet);"
  end
end
