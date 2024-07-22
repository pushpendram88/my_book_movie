class CreateHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :halls do |t|
      t.string :name
      t.integer :number_of_row
      t.integer :number_of_column
      t.timestamps
    end
  end
end
