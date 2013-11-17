class CreateCorresponsales < ActiveRecord::Migration
  def change
    create_table :corresponsales do |t|
      t.string :usuario
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.integer :telefono_fijo
      t.integer :telefono_movil
      t.string :ciudad
      t.string :provincia

      t.timestamps
    end
  end
end
