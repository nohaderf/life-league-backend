class User < ApplicationRecord
    has_many :tasks
    has_many :UserLeagues
    has_many :leagues, through: :UserLeagues
end
