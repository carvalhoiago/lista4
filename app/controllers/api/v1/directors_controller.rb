module Api
  module V1
    class DirectorsController < ApplicationController
      def show
        if Director.exists?(params[:id])
          director = Director.find(params[:id])
          render json:{ id: director.id, name: director.name, age: director.age } , status: :ok
        else
          render json: {status: 'error', message: 'not found'}, status: :not_found
        end
      end

      def create
        director = Director.new(director_params)
        if director.save
          render json: { id: director.id, name: director.name, age: director.age }, status: :created
        else
          render json: {status: 'error', message: 'director not created'}, status: :unprocessable_entity
        end
      end

      private
      def director_params
        params.require(:director).permit(:name, :age)
      end

    end
  end
end

