class Project < ApplicationRecord
  belongs_to :admin
  has_many :contributions
end
