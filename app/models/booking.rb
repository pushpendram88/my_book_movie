class Booking < ApplicationRecord
  belongs_to :movie_hall_show
  validate :check_availability

  def check_availability
    unless available_seats? seat
      errors.add(:seat, "not available.")
    end
  end

  def available_seats? seat_number
    movie_hall_show.available_seats.include?(seat_number)
  end
end
