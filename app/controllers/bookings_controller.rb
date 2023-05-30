class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.stone = @stone
    if @booking.save
      redirect_to stone_path(@stone)
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
    @booking.destroy
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancel"
    @booking.destroy
  end
end
