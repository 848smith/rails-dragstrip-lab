class Vehicle < ApplicationRecord
    belongs_to :driver
    validates :year, :make, :model, :trim, :horsepower, presence: true
end
