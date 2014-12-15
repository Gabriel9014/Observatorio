class Vista2Controller < ApplicationController
  def index
  	t = Tweet.new
  	@wii = t.wii
    #Tweet.count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 12 AND tweets.id_tweet=tweet_consola.id_tweet"
  	@play = t.play
  	#count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 11 AND tweets.id_tweet=tweet_consola.id_tweet"#Consola.count_by_sql("SELECT  COUNT(*) FROM tweet_consola, consolas WHERE consolas.id_consola = tweet_consola.id_consola GROUP BY consolas.id_consola")
  	#Tweet.find_by_sql"SELECT tweets.id_tweet, tweets.contenido_tweet FROM tweets , tweet_consola WHERE id_consola = 11 AND tweets.id_tweet=tweet_consola.id_tweet"
  	@xbox = t.xbox
    #Tweet.count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 13 AND tweets.id_tweet=tweet_consola.id_tweet"

  

  	respond_to do |format|
  		format.html
  		format.json
  	end
  end
end
