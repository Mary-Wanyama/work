class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :parcel_id
end
