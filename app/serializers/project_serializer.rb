class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :github_link
  belongs_to :user
  has_many :members
end
