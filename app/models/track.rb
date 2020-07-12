class Track < ApplicationRecord
    has_many :drivers, through: :races
    has_many :races
    validates :name, :location, :weather, :distance, presence: true
end
