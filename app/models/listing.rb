class Listing < ApplicationRecord
  has_many :bookings
  has_many :reservations
  has_many :missions

  # validation : on ne peut pas creer une room sans chambre
end
