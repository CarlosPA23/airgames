class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :address, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Should only contain letters"}

  has_many :games
  has_many :bookings
end
