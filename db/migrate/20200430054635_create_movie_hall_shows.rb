class CreateMovieHallShows < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_hall_shows do |t|
      t.references :movie
      t.references :hall
      t.datetime :show_time
      t.timestamps
    end
  end
end
