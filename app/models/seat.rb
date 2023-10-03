class Seat < ApplicationRecord
    belongs_to :venue
    belongs_to :show

    has_many :booking
end
