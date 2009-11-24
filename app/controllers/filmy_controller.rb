class FilmyController < ApplicationController

  def index
    @filmy = Film.search(params[:search])
  end

  def show
    @film = Film.find(params[:id])
    @recenzje = @film.recenzje.filter_stars(params[:filter])
    @kina = @film.kina.currently_playing
  end

  def new
    @film = Film.new
    @film.seansy.build
  end

  def create
    @film = Film.new(params[:film])
    if @film.save
      flash[:notice] = "Successfully created film."
      redirect_to filmy_path
    else
      render :action => 'new'
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update_attributes(params[:film])
      flash[:notice] = "Successfully updated film."
      redirect_to filmy_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    flash[:notice] = "Successfully destroyed film."
    redirect_to filmy_path
  end

end
