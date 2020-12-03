class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.integer :tmdb_id
      t.boolean :watched
      t.boolean :to_watch

      t.timestamps
    end
  end
end
