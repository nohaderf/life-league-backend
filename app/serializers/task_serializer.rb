class TaskSerializer < ActiveModel::Serializer
    attributes :id, :name, :points, :active, :category
    has_many :DedicatedTimes
    # has_many :UserTasks
    # has_many :users, through: :UserTasks
    has_one :user
    has_many :LeagueTasks
    has_many :leagues, through: :LeagueTasks
end