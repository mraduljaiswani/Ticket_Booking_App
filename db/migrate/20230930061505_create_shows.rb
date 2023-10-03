class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.datetime :showtime

      t.timestamps
    end
  end
end
