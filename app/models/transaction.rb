class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  after_create :update_booking

  def update_booking
    booking.update_attributes(paid: true)
  end
end
