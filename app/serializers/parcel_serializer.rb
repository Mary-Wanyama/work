class ParcelSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :"pickup-location", :"delivery-location", :sender, :receiver, :"pickup-time"
end
