class Cuenta < ActiveRecord::Base
	self.primary_key = "id_cuenta"
	def mujeresplay
		@mujeres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'femenino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Play Station 4'"
	end
	def hombresplay
		@hombres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'masculino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Play Station 4'"
	end
	def mujereswii
		@mujeres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'femenino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Wii U'"
	end
	def hombreswii
		@hombres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'masculino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Wii U'"
	end
	def mujeresxbox
		@mujeres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'femenino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Xbox One'"
	end
	def hombresxbox
		@hombres = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta,tweet_cuenta, tweet_consola, consolas WHERE tweet_consola.id_tweet = tweet_cuenta.id_tweet AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND cuenta.genero_cuenta = 'masculino' AND tweet_consola.id_consola = consolas.id_consola AND consolas.nombre_consola= 'Xbox One'"
	end
	def chileplay
		@chile = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta = 'Chile' AND consolas.nombre_consola = 'Play Station 4'"
	end
	def restoplay
		@resto = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta <> 'Chile' AND consolas.nombre_consola = 'Play Station 4'"
	end
	def chilewii
		@chile = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta = 'Chile' AND consolas.nombre_consola = 'Wii U'"
	end
	def restowii 
		@chile = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta <> 'Chile' AND consolas.nombre_consola = 'Wii U'"
	end
	def chilexbox
		@chile = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta = 'Chile' AND consolas.nombre_consola = 'Xbox One'"
	end
	def restoxbox
		@chile = Cuenta.count_by_sql"SELECT COUNT(*) FROM cuenta, tweet_cuenta, tweets, consolas, tweet_consola WHERE consolas.id_consola = tweet_consola.id_consola AND cuenta.id_cuenta = tweet_cuenta.id_cuenta AND tweet_cuenta.id_tweet = tweets.id_tweet AND tweet_consola.id_tweet = tweets.id_tweet AND cuenta.nacionalidad_cuenta <> 'Chile' AND consolas.nombre_consola = 'Xbox One'"
	end
end
