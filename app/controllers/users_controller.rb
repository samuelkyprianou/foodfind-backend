class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    def sign_in
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { username: user.username, token: generate_token(id: user.id), favourites: user.restaurants }
        else
          render json: { error: "Username or Password is invalid "}
        end
      end

      def validate
        if get_user
          render json: { username: get_user.username, token: generate_token(id: get_user.id), favourites: get_user.restaurants}
        else
          render json: { error: "You are not authorized" }
        end
      end

end
