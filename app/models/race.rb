class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :track
end
