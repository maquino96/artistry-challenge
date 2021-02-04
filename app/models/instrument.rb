class Instrument < ApplicationRecord
    has_many :artist_instrument
    has_many :artists, through: :artist_instrument

end
