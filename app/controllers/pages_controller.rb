class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard

    @my_bookings_received = current_user.received_bookings

    @bookings = current_user.bookings.order(created_at: :desc)
  end
  
end
