class MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: MovieSerializer.new(movies)
    end

    def create
        movie = Movie.new

        movie_params["genres"].each do |genre|
            new_genre = Genre.new
            new_genre.tmdb_id = genre['id']
            new_genre.name = genre['name']
            new_genre.movie_id = movie.id
            new_genre.save
            movie.genres << new_genre
        end

        movie.title = movie_params['title']
        movie.tmdb_id = movie_params['tmdb_id']
        movie.overview = movie_params['overview']
        movie.poster_path = movie_params['poster_path']
        movie.vote_count = movie_params['vote_count']
        movie.vote_average = movie_params['vote_average']
        movie.release_date = movie_params['release_date']
        movie.watched = false
        movie.to_watch = true

        movie.save

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
        movie = Movie.where(id: params[:id])
        movie.update(movie_params)
        render json: MovieSerializer.new(movie)
    end

    private

    def movie_params
        params.permit(
            :id,
            :tmdb_id,
            :watched,
            :to_watch,
            :title,
            :overview,
            :poster_path,
            :vote_average,
            :vote_count,
            :release_date,
            genres: [:id, :name]
        )
    end
end