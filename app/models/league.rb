class League < ApplicationRecord
    has_many :UserLeagues, dependent: :destroy
    has_many :users, through: :UserLeagues
    has_many :LeagueTasks, dependent: :destroy
    has_many :tasks, through: :LeagueTasks
end
