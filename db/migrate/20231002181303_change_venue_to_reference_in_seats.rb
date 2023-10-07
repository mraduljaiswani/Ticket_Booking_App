class ChangeVenueToReferenceInSeats < ActiveRecord::Migration[7.0]
  def change
    add_reference :seats, :venue, foreign_key: true
  
  end
end
