class StaticController < ApplicationController
  def index
  	@noticias = Noticia.all
  end
  def colegiatura
  end
  def documentacion
  end
  def miembros
  end
end
