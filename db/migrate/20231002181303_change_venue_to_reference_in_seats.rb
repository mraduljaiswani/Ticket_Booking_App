class ChangeVenueToReferenceInSeats < ActiveRecord::Migration[7.0]
  def change
    remove_column :seats, :venue_id, :integer
    add_reference :seats, :venue, foreign_key: true
  
  end
end
