class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :genre
      t.boolean :censorship
      t.integer :director_id

      t.timestamps
    end
  end
end
