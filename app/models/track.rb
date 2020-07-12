class Track < ApplicationRecord
    has_many :drivers, through: :races
    has_many :races
end
