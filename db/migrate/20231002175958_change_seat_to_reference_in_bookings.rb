class ChangeSeatToReferenceInBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :seat, foreign_key: true

    
  end
end
