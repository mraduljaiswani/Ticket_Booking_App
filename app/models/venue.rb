class Venue < ApplicationRecord
    has_many :shows, dependent: :destroy
    has_many :seats
end
