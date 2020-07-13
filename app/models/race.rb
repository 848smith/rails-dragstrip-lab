class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :track
    validates :track_time, presence: true

    def self.fastest_times
        order('track_time ASC')
    end
end
