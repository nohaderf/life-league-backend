class DedicatedTimeSerializer < ActiveModel::Serializer
    attributes :id, :date, :time_spent
    has_one :task
end