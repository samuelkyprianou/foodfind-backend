class UserSerializer < ActiveModel::Serializer
  attributes :data

  def data
    {
      id: object.id,
      first_name: object.first_name,
      last_name: object.last_name,
      email: object.email,
      restaurants: parse_restaurants(object.restaurants)
    }
  end


  def parse_restaurants(restaurants)
    parsed = restaurants.map do |restaurant| 
      {
        name: restaurant.name, 
        cuisine: restaurant.cuisine,
        picture: restaurant.picture,
        zomato_id: restaurant.zomato_id,
        longitude: restaurant.longitude,
        latitude: restaurant.latitude
      }
    end
  end

end
