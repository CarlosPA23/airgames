class Game < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  has_one_attached :photo
  has_many :reviews, dependent: :destroy

end
