class AddPaidToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :paid, :boolean, default: false
  end
end
