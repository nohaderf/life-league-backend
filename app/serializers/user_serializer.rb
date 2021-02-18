class UserSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :first_name, :last_name, :username, :email, :password, :friend, :image_url, :total_points
    # has_many :UserTasks
    # has_many :tasks, through: :UserTasks
    has_many :tasks
    has_many :UserLeagues
    has_many :leagues, through: :UserLeagues

end