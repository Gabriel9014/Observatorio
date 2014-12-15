class Tweet < ActiveRecord::Base
	self.primary_key = "id_tweet"
	#def cantidadTweetPlay()
	#	 Tweet.find_by_sql"SELECT tweets.contenido_tweet FROM tweets , tweet_consola WHERE id_consola = 11 AND tweets.id_tweet=tweet_consola.id_tweet LIMIT 1"
	#end
	def saludar
    puts 'hola'
  	end
  	def play
		@play = Tweet.count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 11 AND tweets.id_tweet=tweet_consola.id_tweet"
	end
	def wii
		@wii =  Tweet.count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 12 AND tweets.id_tweet=tweet_consola.id_tweet"
	end
	def xbox
		@xbox = Tweet.count_by_sql"SELECT COUNT(*) FROM tweets , tweet_consola WHERE id_consola = 13 AND tweets.id_tweet=tweet_consola.id_tweet"
	end
end
