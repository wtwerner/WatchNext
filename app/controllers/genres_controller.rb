class GenresController < ApplicationController
    def show
        genre = MovieGenre.find_by(id: params[:id])
        render json: genre
    end

    def index
        genres = Genre.all
        render json: genres
    end
end
