class Movie < ApplicationRecord
  validates :name, presence: true
  validates :genre, presence: true
  validates :format, presence: true

  has_many :movie_hall_shows
  has_many :reviews
  has_many :halls, through: :movie_hall_shows
end
