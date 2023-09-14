class FishesController < ApplicationController
  def index
    @fishes = Fish.all
    @fish = Fish.find(params[:id])
  end

  def create
    Fish.create (fish_params)
  end
  
  def show
    @fish = Fish.find(params[:id])
  end

  private

end