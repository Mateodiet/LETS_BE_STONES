class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @stones = Stone.last(6)
  end

  def espace
    @stones = current_user.stones
  end

  def resa
    @bookings = current_user.bookings
  end
end
