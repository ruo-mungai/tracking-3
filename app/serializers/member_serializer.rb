class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name ,:user_id ,:project_id
 belongs_to :project
 belongs_to :user
  
end
