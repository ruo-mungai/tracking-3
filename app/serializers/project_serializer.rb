class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :github_link ,:user_id

  has_many :members
  belongs_to :user
end
