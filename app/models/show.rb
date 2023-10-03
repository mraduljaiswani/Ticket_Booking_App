class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :venue


  has_many :bookings
  has_many :seats, through: :bookings
end
