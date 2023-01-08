class Profile < ApplicationRecord
    belongs_to :parcel 
    belongs_to :user
end
