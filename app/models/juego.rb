class Juego < ActiveRecord::Base
	self.primary_key = "id_juego"
	def juegoplay
		@juego = Juego.find_by_sql"SELECT juegos.nombre_juego, COUNT(juegos.id_juego) FROM juegos, juego_hashtag, hashtags, tweet_hashtag, juego_consola , tweets, consolas WHERE 
juegos.id_juego = juego_hashtag.id_juego AND juego_hashtag.id_hashtag = hashtags.id_hashtag AND tweet_hashtag.id_hashtag = hashtags.id_hashtag
AND juego_consola.id_juego = juegos.id_juego AND juego_consola.id_consola = consolas.id_consola AND tweets.id_tweet = tweet_hashtag.id_tweet AND consolas.nombre_consola = 'Play Station 4'GROUP BY juegos.id_juego ORDER BY COUNT(juegos.id_juego) DESC LIMIT 3"
	end
	def juegoswii
		@juego = Juego.find_by_sql"SELECT juegos.nombre_juego, COUNT(juegos.id_juego) FROM juegos, juego_hashtag, hashtags, tweet_hashtag, juego_consola , tweets, consolas WHERE 
juegos.id_juego = juego_hashtag.id_juego AND juego_hashtag.id_hashtag = hashtags.id_hashtag AND tweet_hashtag.id_hashtag = hashtags.id_hashtag
AND juego_consola.id_juego = juegos.id_juego AND juego_consola.id_consola = consolas.id_consola AND tweets.id_tweet = tweet_hashtag.id_tweet AND consolas.nombre_consola = 'Wii U'GROUP BY juegos.id_juego ORDER BY COUNT(juegos.id_juego) DESC LIMIT 3"
	end
	def juegosxbox
		@juego = Juego.find_by_sql"SELECT juegos.nombre_juego, COUNT(juegos.id_juego) FROM juegos, juego_hashtag, hashtags, tweet_hashtag, juego_consola , tweets, consolas WHERE 
juegos.id_juego = juego_hashtag.id_juego AND juego_hashtag.id_hashtag = hashtags.id_hashtag AND tweet_hashtag.id_hashtag = hashtags.id_hashtag
AND juego_consola.id_juego = juegos.id_juego AND juego_consola.id_consola = consolas.id_consola AND tweets.id_tweet = tweet_hashtag.id_tweet AND consolas.nombre_consola = 'Xbox One'GROUP BY juegos.id_juego ORDER BY COUNT(juegos.id_juego) DESC LIMIT 3"
	end
end
