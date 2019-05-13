class ArtsController < ApplicationController
  before_action :set_art, only: [:edit, :update, :destroy]

  def index
    @arts = Art.all
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.save
    redirect_to art_path(@art)
  end

  def edit
  end

  def update
    @art.update(art_params)
    redirect_to art_path(@art)
  end

  def destroy
    @art.destroy
    redirect_to arts_path
  end

  private

  def art_params
    params.require(:art).permit(:title, :author, :description, :date)
  end

  def set_art
    @art = Art.find(params[:id])
  end

end
