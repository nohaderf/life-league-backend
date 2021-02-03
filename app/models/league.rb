class League < ApplicationRecord
    has_many :UserLeagues
    has_many :users, through: :UserLeagues
end
