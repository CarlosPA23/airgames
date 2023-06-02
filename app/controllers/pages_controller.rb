class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @my_bookings_received = current_user.received_bookings
  end
end
