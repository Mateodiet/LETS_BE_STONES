class BookingsController < ApplicationController
  def new
    @stone = Stone.find(params[:stone_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @stone = Stone.find(params[:stone_id])
    @booking.stone = @stone
    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accept"
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "decline"
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
