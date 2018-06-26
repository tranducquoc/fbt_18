class UsersController < ApplicationController
  def show
    @bookings = Booking.all.paginate page: params[:page], per_page: Settings.admin_booking
  end
end
