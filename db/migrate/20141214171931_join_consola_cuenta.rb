class JoinConsolaCuenta < ActiveRecord::Migration
  def change
  	create_join_table :consolas, :cuentas
  end
end
