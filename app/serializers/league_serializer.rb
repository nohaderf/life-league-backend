class LeagueSerializer < ActiveModel::Serializer
    attributes :id, :name, :notes, :duration
    has_many :UserLeagues
    has_many :users, through: :UserLeagues
end