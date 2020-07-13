class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :track
    validates :track_time, presence: true
end
