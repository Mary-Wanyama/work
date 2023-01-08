class Parcel < ApplicationRecord
    belongs_to :parcel 
    belongs_to :user

    validates :name, presence: true 
    validates :pickup_location, presence: true
end
