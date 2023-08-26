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

  def show
    @catch = Catch.find(params[:id])
  end

  def edit
    @catch = Catch.find(params[:id])
  end

  def update
    catch = Catch.find(params[:id])
    catch.update(catch_params)
    redirect_to root_path
  end

  def destroy
  end

  private
  def catch_params
    params.require(:catch).permit(:title, :fishing, :area, :fish, :tool, :image, :content)
  end

end