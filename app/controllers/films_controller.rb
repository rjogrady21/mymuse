class FilmsController < ApplicationController
  before_action :set_film, only: [:edit, :update, :destroy]

  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    @film.save
    redirect_to film_path(@film)
  end

  def edit
  end

  def update
    @film.update(film_params)
    redirect_to film_path(@film)
  end

  def destroy
    @film.destroy
    redirect_to films_path
  end

  private

  def film_params
    params.require(:film).permit(:title, :author, :description, :date)
  end

  def set_film
    @film = Film.find(params[:id])
  end

end
