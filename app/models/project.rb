class Project < ApplicationRecord
  belongs_to :admin
  has_many :contributions
  has_many :contributors, through: :contributions
end
