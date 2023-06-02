class BookingsController < ApplicationController
  def new
    @stone = Stone.find(params[:stone_id])
    @booking = Booking.new
  end

  def create
    @stone = Stone.find(params[:stone_id])
    dates = booking_params[:start_date].split
    @booking = Booking.new(comment: booking_params[:comment], start_date: dates[0], end_date: dates[2])
    @booking.stone = @stone
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to espace_path
    else
      redirect_to stone_path(@booking.stone)
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accept"
    @booking.save
    redirect_to espace_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "decline"
    @booking.save
    redirect_to espace_path
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancel"
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :user, :stone, :status, :start_date, :end_date)
  end
end
