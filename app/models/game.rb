class Game < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  has_one_attached :photo
  has_many :reviews, dependent: :destroy

end
