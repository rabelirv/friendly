module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end

      def show
        user = User.find(params[:id])

        user_json = {
          id: user.id,
          name: user.name,
          avatar: user.avatar
        }

        render json: user_json
      end

      def create
        user = User.create(user_params)
        render json: user
      end

      def edit

      end

      def update

      end

      def destroy
        user = User.find(params[:id])
        user.destroy
      end

      private

      def user_params(*args)
        params.require(:user).permit(:name,:avatar)
      end

    end
  end
end
