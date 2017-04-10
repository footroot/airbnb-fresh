class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

  scope :approved, -> { where(approved: true, paid: false) }
  scope :paid, -> { where(paid: true) }
  scope :pending, -> { where(approved: false) }
  # @booking.pending => []

  # def paid
  #   where(paid: true)
  # end
end
