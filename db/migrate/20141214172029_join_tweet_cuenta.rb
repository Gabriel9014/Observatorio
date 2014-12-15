class JoinTweetCuenta < ActiveRecord::Migration
  def change
  	create_join_table :tweets, :cuentas
  end
end
