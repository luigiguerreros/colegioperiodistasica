class CreateCorresponsales < ActiveRecord::Migration
  def change
    create_table :corresponsales do |t|
      t.string :usuario
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :telefono_fijo
      t.string :telefono_movil

      t.timestamps
    end
  end
end
