class Track < ApplicationRecord
    has_many :drivers, through: :races
    has_many :races
    validates :name, :location, :weather, :distance, presence: true

    def raced?
        if self.raced == true
            "Raced"
        else
            "Not Raced"
        end
    end
end
