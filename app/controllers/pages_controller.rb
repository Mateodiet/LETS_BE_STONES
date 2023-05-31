class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @stones = Stone.last(6)
  end

  def dashboard
    @stones = current_user.stones
    @bookings = current_user.bookings
  end

  def home
    @stones = Stone.last(4)
  end

end
