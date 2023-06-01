# require 'pg_search'

class Game < ApplicationRecord

  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  # code to Searching One model using PgSearch GEM module
  include PgSearch::Model
  pg_search_scope :search_by_title_and_category
    against: [ :title , :category ]
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
