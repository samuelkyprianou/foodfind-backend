class User < ApplicationRecord
    has_many :favourites
    has_many :restaurants, through: :favourites
    has_secure_password
end
