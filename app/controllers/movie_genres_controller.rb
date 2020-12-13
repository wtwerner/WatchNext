class MovieGenresController < ApplicationController
    before_action :authenticate_user!
    def show
        movie_genre = MovieGenre.find_by(id: params[:id])
        if movie_genre
            render json: movie_genre.to_json(include: [:movie, :genre])
        else
            render json: { message: 'No movie_genre found with that id' }
        end
    end

    def index
        movie_genres = MovieGenre.all
        if movie_genres
            render json: movie_genres.to_json(include: [:movie, :genre])
        else
            render json: { message: 'No movie_genres found with that id' }
        end
    end
end
