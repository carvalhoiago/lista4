module Api
  module V1
    class MoviesController < ApplicationController
      def index
        movies = Movie.all
        render json:{status: 'succes', message: 'movies found', data: movies.select('id', 'name','description', 'genre', 'censorship', 'director_id')}, status: :ok
      end

      def show
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          render json:{id: movie.id, name: movie.name, description: movie.description, genre: movie.genre, censorship: movie.censorship, director_id: movie.director_id } , status: :ok
        else
          render json: {status: 'error', message: 'not found'}, status: :not_found
        end
      end

      def destroy
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          if movie.destroy!
            render json:{status: 'succes', message: 'movie destroyed' } , status: :ok
          else
            render json:{status: 'error', message: 'failed to destroy movie'}, status: :bad_request
          end
        else
          render json: {status: 'error', message: 'not found'}, status: :not_found
        end
      end

      def create
        movie = Movie.new(movie_params)
        if movie.save
          render json: { id: movie.id, name: movie.name, description: movie.description, genre: movie.genre, censorship: movie.censorship, director_id:movie.director_id }, status: :created
        else
          render json: {status: 'error', message: 'movie not created'}, status: :unprocessable_entity
        end
      end

      def update
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          if movie.update(movie_params)
            render json: {id: movie.id, name: movie.name, description: movie.description, genre: movie.genre, censorship: movie.censorship, director_id:movie.director_id}, status: :ok
          end
        else
          render json: {status: 'error', message: 'not found'}, status: :not_found
        end
      end

      private
      def movie_params
        params.require(:movie).permit(:name, :description, :genre, :censorship, :director_id)
      end
    end
  end
end

