class Game < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  validates :title, :description, :price, :category, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: ["Console", "Board", "Sports", "Silly"] }

  validates :photo, attached: true
end
