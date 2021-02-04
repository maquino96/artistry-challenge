class Artist < ApplicationRecord
    has_many :artists_instruments
    has_many :instruments, through: :artist_instruments

end
