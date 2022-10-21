class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :github_link
end
