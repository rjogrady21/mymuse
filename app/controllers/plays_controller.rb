class PlaysController < ApplicationController
  before_action :set_play, only: [:edit, :update, :destroy]

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new(play_params)
    @play.save
    redirect_to play_path(@play)
  end

  def edit
  end

  def update
    @play.update(play_params)
    redirect_to play_path(@play)
  end

  def destroy
    @play.destroy
    redirect_to plays_path
  end

  private

  def play_params
    params.require(:play).permit(:title, :playwright, :description, :date)
  end

  def set_play
    @play = Play.find(params[:id])
  end

end
