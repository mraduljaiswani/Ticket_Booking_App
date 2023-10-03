class ChangeVenueToReferenceInShows < ActiveRecord::Migration[7.0]
  def change
    remove_column :shows, :venue_id, :integer
    add_reference :shows, :venue, foreign_key: true
  
  end
end
