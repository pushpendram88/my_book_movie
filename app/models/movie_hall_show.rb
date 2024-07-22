class MovieHallShow < ApplicationRecord
  validates :show_time, presence: true

  belongs_to :hall
  belongs_to :movie

  has_many :bookings

  def show_time_format
    show_time&.strftime('%T')
  end

  def seats
    hall.number_of_row.times.map do |row|
      row = ('a'..'z').to_a[row]
      hall.number_of_column.times.map do |column|
        seat = row.to_s + (column + 1).to_s
      end
    end.flatten
  end

  def available_seats
    seats - bookings.pluck(:seat)
  end

  def available_seats? seat_number
    available_seats.include?(seat_number)
  end
end
