class PagesController < ApplicationController
  def home
  end

  def host_dashboard
  	# get approved and not approved bookings
  	# render template for that host
  	@rooms = current_user.rooms
  end

  def guest_dashboard
  	@bookings = current_user.bookings
  	@approved_bookings = @bookings.approved
  	@pending_bookings = @bookings.pending
    @paid_bookings = @bookings.paid
  end
end
