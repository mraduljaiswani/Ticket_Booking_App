class AddStartTimeToShow < ActiveRecord::Migration[7.0]
  def change
    add_column :shows, :start_time, :datetime
  end
end
