class AddCamposusuarioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usuario, :string
    add_column :users, :nombres, :string
    add_column :users, :apellidos, :string
    add_column :users, :correo, :string
    add_column :users, :telefono_fijo, :integer
    add_column :users, :telefono_movil, :integer
    add_column :users, :ciudad, :string
    add_column :users, :provincia, :string
  end
end
