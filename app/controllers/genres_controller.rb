class GenresController < ApplicationController
    def show
        genre = Genre.find_by(id: params[:id])
        render json: genre
    end

    def index
        genres = Genre.all
        render json: genres
    end
end
