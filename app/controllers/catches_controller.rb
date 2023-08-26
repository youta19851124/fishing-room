class CatchesController < ApplicationController
  def index
    @catches = Catch.all
  end

  def new
    @catch = Catch.new
  end

  def create
    Catch.create(catch_params)
    redirect_to '/'
  end

  private
  def catch_params
    params.require(:catch).permit(:title, :fishing, :area, :fish, :tool, :image, :content)
  end

end