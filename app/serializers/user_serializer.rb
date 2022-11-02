class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :role, :cohort_id

  belongs_to :cohort
end
