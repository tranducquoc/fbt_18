module Admin
  class AdminController < ApplicationController
    before_action :check_admin

    def new
      @bookings = Booking.includes(:tour).pending_status.order_desc
        .paginate page: params[:page], per_page: Settings.record_pages
    end
  end
end
