class MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: MovieSerializer.new(movies)
    end

    def create
        movie = Movie.create(movie_params)
        render json: MovieSerializer.new(movie)
    end

    def destroy
        movie = Movie.where(tmdb_id: params[:id]).take
        Movie.destroy(movie.id)
    end

    def show
        movie = Movie.where(tmdb_id: params[:id])
        render json: MovieSerializer.new(movie)
    end

    def update
        movie = Movie.where(tmdb_id: params[:id])
        movie.update(movie_params)
    end

    private

    def movie_params
        params.permit(
            :id,
            :tmdb_id,
            :watched,
            :to_watch
        )
    end
end
