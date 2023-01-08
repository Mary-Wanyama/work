class User < ApplicationRecord
    has_secure_password

    has_many :profiles 
    has_many :parcels, through: :profiles


    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :role, inclusion: ["Customer", "Employee", "Admin"]
end
