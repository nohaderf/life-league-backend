class Task < ApplicationRecord
  belongs_to :user
  has_many :DedicatedTimes
  has_many :LeagueTasks, dependent: :destroy 
  has_many :leagues, through: :LeagueTasks
end