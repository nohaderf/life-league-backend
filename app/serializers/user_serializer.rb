class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :username, :email, :password
    has_many :tasks
    has_many :UserLeagues
    has_many :leagues, through: :UserLeagues
end