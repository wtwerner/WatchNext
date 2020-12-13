class Movie < ApplicationRecord
    has_many :movie_genres, dependent: :delete_all
    has_many :genres, through: :movie_genres
end
