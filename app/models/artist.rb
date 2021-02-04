class Artist < ApplicationRecord
    has_many :artist_instrument
    has_many :instruments, through: :artist_instrument 

end
