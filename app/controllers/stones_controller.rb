class StonesController < ApplicationController
  def index
    @stones = Stone.all
  end

  def show
    @booking = Booking.new
    @stone = Stone.find(params[:id])
  end

  def new
    @stone = Stone.new
  end

  def create
    @stone = Stone.new(stone_params)
    @stone.user = current_user
    if @stone.save
      redirect_to stones_path
    else
      redirect_to new_stone_path
    end
  end

  def edit
    @stone = Stone.find(params[:id])
  end

  def update
    @stone = Stone.find(params[:id])
    @stone.update(stone_params)
    redirect_to stone_path(@stone)
  end

  def destroy
    @stone = Stone.find(params[:id])
    @stone.destroy
    redirect_to espace_path, status: :see_other
  end

  private

  def stone_params
    params.require(:stone).permit(:name, :description, :price, :user, :image)
  end
end
