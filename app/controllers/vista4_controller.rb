class Vista4Controller < ApplicationController
  def index
  	j = Juego.new
  	@juegosplay = j.juegoplay
  	@juegoswii = j.juegoswii
  	@juegosxbox = j.juegosxbox
  end
end
