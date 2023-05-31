class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @stones = Stone.last(5)
  end

  def dashboard
    @stones = current_user.stones
    @bookings = current_user.bookings
  end
end
