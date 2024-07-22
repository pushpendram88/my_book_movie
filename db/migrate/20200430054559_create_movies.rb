class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.text :description
      t.string :format
      t.timestamps
    end
  end
end
