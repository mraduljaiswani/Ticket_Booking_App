class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :seat

end
