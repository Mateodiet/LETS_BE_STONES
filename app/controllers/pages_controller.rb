class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
  end

  def home
    @stones = Stone.last(4)
  end

end
