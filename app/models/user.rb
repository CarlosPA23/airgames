class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :address, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Should only contain letters" }

  has_one_attached :photo

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  has_many :games, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :received_bookings, through: :games, source: :bookings

  has_many :games, through: :bookings

  has_many :reviews, dependent: :destroy
end
