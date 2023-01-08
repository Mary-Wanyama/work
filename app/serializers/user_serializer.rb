class UserSerializer < ActiveModel::Serializer
  attributes :username, :role, :bio
end
