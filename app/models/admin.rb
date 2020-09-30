class Admin < ApplicationRecord
    has_many :projects
    has_many :contributions, through: :projects
    has_many :contributors, through: :contributions
end
