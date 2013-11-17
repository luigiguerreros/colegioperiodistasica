class StaticController < ApplicationController
  def index
  	@noticias = Noticia.all
  end
end
