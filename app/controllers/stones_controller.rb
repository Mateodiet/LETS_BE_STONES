class StonesController < ApplicationController
  def index
    @stones = Stone.all
  end

  def show
    @stone = Stone.find(params[:id])
  end

  def new
    @stone = Stone.new
  end

  def create
    @stone = Stone.new(params[:stone])
    @stone.save
    redirect_to stone_path(@stone)
  end

  private

  def stone_params
    params.require(:stone).permit(:name, :description, :price)
  end

  def edit
    @stone = Stone.find(params[:id])
  end

  def update
    @stone = Stone.find(params[:id])
    @stone.update(params[:stone])
    redirect_to stone_path(@stone)
  end

  def destroy
    @stone = Stone.find(params[:id])
    @stone.destroy
    redirect_to stone_path, status: :see_other
  end
end
