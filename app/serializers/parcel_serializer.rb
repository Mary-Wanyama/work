class ParcelSerializer < ActiveModel::Serializer
  attributes :name, :weight, :pickup_location, :delivery_location, :pickup_time, :sender, :receiver
end
