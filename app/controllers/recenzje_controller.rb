class RecenzjeController < ApplicationController

  def index
    @recenzje = Recenzja.recent(10)
  end

  def create
    @film = Film.find(params[:film_id])
    @recenzja = @film.recenzje.build(params[:recenzja])
    if @recenzja.save
      redirect_to @film
    else
      render :action => 'new'
    end
  end

end
