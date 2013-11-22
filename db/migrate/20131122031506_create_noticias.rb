class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.integer :user_id
      t.string :titulo
      t.text :contenido
      t.string :ciudad
      t.string :provincia
      t.string :url_imagen_noticia
      t.string :seccion
    end
  end
end
