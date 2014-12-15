class Vista3Controller < ApplicationController
  def index
  	c = Cuenta.new
  	@mujeresplay = c.mujeresplay
  	@hombresplay = c.hombresplay
  	@mujereswii = c.mujereswii
  	@hombreswii = c.hombreswii
  	@mujeresxbox = c.mujeresxbox
  	@hombresxbox = c.hombresxbox
  	@chileplay = c.chileplay
  	@restoplay = c.restoplay
  	@chilewii = c.chilewii
  	@restowii = c.restowii
  	@chilexbox = c.chilexbox
  	@restoxbox = c.restoxbox
  end
end
