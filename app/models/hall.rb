class Hall < ApplicationRecord
  validates :number_of_row, presence: true
  validates :number_of_column, presence: true

  has_many :movie_hall_shows
  has_many :movies, through: :movie_hall_shows
end
