json.array!(@noticias) do |noticia|
  json.extract! noticia, :corresponsal_id, :titulo, :contenido, :ciudad, :provincia, :url_imagen_noticia, :seccion
  json.url noticia_url(noticia, format: :json)
end
