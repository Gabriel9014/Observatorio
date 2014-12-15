class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuentas, {:id => false} do |t|
  t.integer :id_cuenta
  t.string :nombre_cuenta
  t.string :geneto_cuenta
  t.integer :edad_cuenta
  t.string :nacionalidad_cuenta
end
execute "ALTER TABLE cuentas ADD PRIMARY KEY (id_cuenta);"
  end
end
