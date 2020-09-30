class Contributor < ApplicationRecord
    has_many :contributions
    has_many :projects, through: :contributions
end
