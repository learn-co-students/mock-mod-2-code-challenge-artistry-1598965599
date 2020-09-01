class Album < ApplicationRecord
    belongs_to:artist
    belings_to:instrument
end
#Enables Album class to act as a join class between Artist and Instrument 