class PoemsController < ApplicationController
  before_action :set_poem, only: [:edit, :update, :destroy]

  def index
    @poems = Poem.all
  end

  def new
    @poem = Poem.new
  end

  def create
    @poem = Poem.new(poem_params)
    @poem.save
    redirect_to poem_path(@poem)
  end

  def edit
  end

  def update
    @poem.update(poem_params)
    redirect_to poem_path(@poem)
  end

  def destroy
    @poem.destroy
    redirect_to poets_path
  end

  private

  def poem_params
    params.require(:poem).permit(:title, :poet, :description, :date)
  end

  def set_book
    @poem = Poem.find(params[:id])
  end

end
