class KinaController < ApplicationController

  def show
    @kino = Kino.find(params[:id])
    @kina = @kino.filmy.currently_playing
  end

  def edit
    @kino = Kino.find(params[:id])
  end

  def update
    @kino = Kino.find(params[:id])
    if @kino.update_attributes(params[:kino])
      redirect_to @kino
    else
      render :action => 'edit'
    end
  end

end
