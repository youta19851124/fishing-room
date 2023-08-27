class CatchesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @catches = Catch.includes(:user)
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
    catch = Catch.find(params[:id])
    catch.destroy
    redirect_to root_path
  end

  def search
    @catches = Catch.search(params[:keyword])
    @no_results_message = "一致する釣果情報はありません" if @catches.empty?
  end

  private
  def catch_params
    params.require(:catch).permit(:title, :fishing, :area, :fish, :tool, :image, :content).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end