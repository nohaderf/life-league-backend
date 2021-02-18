class User < ApplicationRecord
    include Rails.application.routes.url_helpers

    has_many :tasks
    has_many :UserLeagues, dependent: :destroy
    has_many :leagues, through: :UserLeagues

end
