class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_path
      t.string :release_date
      t.integer :vote_average
      t.integer :vote_count
      t.integer :tmdb_id
      t.boolean :watched
      t.boolean :to_watch

      t.timestamps
    end
  end
end
