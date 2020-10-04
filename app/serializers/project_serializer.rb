class ProjectSerializer < ActiveModel::Serializer
  has_many :contributions
  has_many :contributors, through: :contributions
  attributes :id, :title, :summary, :objective, :location
end
