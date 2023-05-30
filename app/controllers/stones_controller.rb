class StonesController < ApplicationController
  def index
    @stones = Stone.all
  end

  def show
    @stones = Stone.find(params[:id])

  end

  def new
    @stone = Stone.new
  end

  def create
    @stone = Stone.new(params[:stones])
    if stone.save
      redirect_to stone_path(@stone)
    else
      render :new
    end
  end

  def edit
    @stone = Stone.find(params[:id])
  end

  def update
    @stone = Stone.find(params[:id])
    @stone.update(params[:stones])
    redirect_to stone_path(@stone)
  end

  def destroy
    @stone = Stone.find(params[:id])
    @stone.destroy
    redirect_to stone_path, status: :see_other
  end
end

private

def stones_params
  params.require(:stones).permit(:name, :description, :price, :rating)
end
