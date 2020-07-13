class Driver < ApplicationRecord
    has_secure_password
    has_many :tracks, through: :races
    has_many :races
    has_many :vehicles
    validates :username, :first_name, :last_name, :experience, :age, :country, presence: true
    validates :password, presence: true, on: :create

    def full_name
        self.first_name + " " + self.last_name
    end
end
