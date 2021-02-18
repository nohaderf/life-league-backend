class LeagueSerializer < ActiveModel::Serializer
    attributes :id, :name, :notes, :duration, :UserLeagues
    has_many :UserLeagues
    has_many :users, through: :UserLeagues
    has_many :LeagueTasks
    has_many :tasks, through: :LeagueTasks
end