class RestaurantsController < ApplicationController
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def create
        restaurant = Restaurant.new(
            name: params[:name], 
            cuisine: params[:cuisine],
            picture: params[:picture],
            zomato_id: params[:zomato_id],
            longitude: params[:longitude],
            latitude: params[:latitude])
            
            user = User.find_by(username: params[:user])
        
         if restaurant.save && user
            Favourite.create(user_id: user.id, restaurant_id: restaurant.id)
          render json: {restaurant: restaurant}
        else
          puts "failed"
          render json: user.errors, status: :unprocessable_entity
        end
      end
end
