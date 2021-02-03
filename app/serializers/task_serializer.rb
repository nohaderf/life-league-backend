class TaskSerializer < ActiveModel::Serializer
    attributes :id, :name, :points, :active, :category
    has_many :DedicatedTimes
    has_one :user
end