class AddLocationToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :location, :string
  end
end
