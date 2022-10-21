class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name
 belongs_to :project
 belongs_to :user
  
end
