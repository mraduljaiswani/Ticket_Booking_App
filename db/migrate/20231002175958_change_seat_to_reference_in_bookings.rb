class ChangeSeatToReferenceInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :selected_seats, :text
    add_reference :bookings, :seat, foreign_key: true

    
  end
end
