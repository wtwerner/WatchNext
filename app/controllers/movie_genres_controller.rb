class MovieGenresController < ApplicationController
    def show
        movie_genre = MovieGenre.find_by(id: params[:id])
        render json: movie_genre
    end

    def index
        movie_genres = MovieGenre.all
        render json: movie_genres
    end
end
