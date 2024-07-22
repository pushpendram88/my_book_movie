class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :movie_hall_show
      t.string :seat
      t.references :user
      t.timestamps
    end
  end
end
