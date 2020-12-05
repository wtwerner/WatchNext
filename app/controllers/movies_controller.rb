class MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: MovieSerializer.new(movies)
    end

    def create
        movie = Movie.create(movie_params)
        render json: MovieSerializer.new(movie)
    end

    private

    def movie_params
        params.permit(
            :tmdb_id,
            :watched,
            :to_watch
        )
    end
end
