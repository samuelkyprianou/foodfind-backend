class FavouritesController < ApplicationController

def unfavourite
    restaurant = params[:restaurant]
    user = User.find_by(username: params[:user])
    favourite = Favourite.find_by({user_id: user.id, restaurant_id: restaurant[:id]})
    favourite.destroy
end

end
