class Instrument < ApplicationRecord
    #the joiner
  has_many :artist_instruments
  #only access artists through this door aka joiner
  has_many :artists, through: :artist_instruments 
  #ArtistInstrument
end
