class Restaurant < ApplicationRecord
    has_many :favourites
    has_many :users, through: :favourites
end
