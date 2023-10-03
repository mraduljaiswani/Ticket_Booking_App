class AddShowIdToSeats < ActiveRecord::Migration[7.0]
  def change
    add_reference :seats, :show, foreign_key: true

  end
end
